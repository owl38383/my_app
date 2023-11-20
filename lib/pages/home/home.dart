import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/user_login_resp_entity.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/pages/home/list_widget.dart';

import '../../common/values/values.dart';
import 'app_bar_widget.dart';
import 'app_widget.dart';
import 'card_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserLoginRespEntity _respEntity;
  List<dynamic> _companyList = [];
  List<dynamic> _appList = [];
  Map<String, dynamic> _cardInfo = {};
  String selectedValue = '';

  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    _loadALL();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  _loadALL() async {
    _cardInfo = await UserAPI.getCountByCared();
    Map<String, dynamic> appMap = await UserAPI.getMyApps();

    setState(() {
      _companyList = StorageUtil().getJson(STORAGE_USER_COMPANY_KEY);
      selectedValue = _companyList[0]['info_company']['company_id'];
      _respEntity = UserLoginRespEntity.fromJson(StorageUtil().getJson(STORAGE_USER_PROFILE_KEY));
      appMap['groups'].forEach((item) {
        _appList.addAll(item['apps']);
      });
      _appList = _appList.toSet().toList();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(
          context: context,
          companyList: _companyList,
          selectedValue: selectedValue,
          onChanged: (String? newValue) {},
        ),
        body: EasyRefresh(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 3));
            if (!mounted) {
              return;
            }
            _loadALL();
            _controller.finishRefresh();
            _controller.resetFooter();
          },
          onLoad: () async {
            await Future.delayed(const Duration(seconds: 2));
            if (!mounted) {
              return;
            }
            _loadALL();
            _controller.finishLoad();
          },
          child: Container(
            padding: EdgeInsets.all(duSetHeight(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 在竖直方向上居中对齐
              crossAxisAlignment: CrossAxisAlignment.center, // 在水平方向上居中对齐
              children: <Widget>[
                buildCard(_cardInfo),
                buildApps(_appList),
                Expanded(
                  child: buildList(),
                ),
              ],
            ),
          ),
        ));
  }
}
