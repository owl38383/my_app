import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/storage.dart';
import 'package:my_app/common/widgets/drawer.dart';
import 'package:my_app/global.dart';
import 'package:my_app/global_state.dart';
import 'package:my_app/pages/home/list_widget.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'card_widget.dart';
import 'data_provider.dart';

class HomePageProvide extends StatefulWidget {
  final String companyId;
  final String companyName;

  const HomePageProvide({
    super.key,
    required this.companyId,
    required this.companyName,
  });

  @override
  State<HomePageProvide> createState() => _HomePageProvideState();
}

class _HomePageProvideState extends State<HomePageProvide> {
  CompanyListData _companyListData = CompanyListData();
  UserLoginRespData _userLoginRespEntity = UserLoginRespData();
  List<dynamic> _appList = [];
  late MarketMineEntity _appMap;
  String? selectedValue = Global.selectCompany['companyId'];

  // 显示侧边栏
  bool isDrawerOpen = false;
  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).setSelectedUnitId(widget.companyId);
    Provider.of<DataProvider>(context, listen: false).setSelectedCompanyName(widget.companyName);
    _loadALL();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadALL();
  }

  _loadALL() async {
    _appMap = await UserAPI.getMyApps();
    _userLoginRespEntity = UserLoginRespData.fromJson(StorageUtil().getJson(STORAGE_USER_PROFILE_KEY));
    _companyListData = CompanyListData.fromJson(StorageUtil().getJson(STORAGE_USER_COMPANY_KEY));

    for (var item in _appMap.data.groups) {
      _appList.addAll(item.apps);
    }
    _appList = _appList.toSet().toList();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CountByCaredData cardInfo = Provider.of<DataProvider>(context).cardInfo;
    String selectedUnitId = Provider.of<DataProvider>(context).selectedUnitId;

    return Consumer<DataProvider>(
      builder: (BuildContext context, DataProvider value, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,    // 这里设置为0就没有阴影了
            title: Text(context.read<DataProvider>().selectedCompanyName),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_box),
                onPressed: () {},
              )
            ],
          ),
          drawer: MyDrawer(
            companyListData: _companyListData,
            selectedValue: selectedUnitId,
            userInfoData: _userLoginRespEntity,
            onItemSelected: (CompanyListDataListInfoCompany value) {
              Global.selectCompany['companyId'] = value.companyId;
              Global.selectCompany['companyType'] = value.enumCompanyType.name;
              // 状态通知
              var globalState = Provider.of<GlobalState>(context, listen: false);
              Provider.of<DataProvider>(context, listen: false).setSelectedUnitId(value.companyId);
              Provider.of<DataProvider>(context, listen: false).setSelectedCompanyName(value.companyName);

              globalState.updateSelectedCompanyValue(value.companyId);
              globalState.updateSelectedCompanyName(value.companyName);

              setState(() {
                selectedValue = Global.selectCompany['companyId'];
              });
            },
          ), // 添加侧边栏
          body: EasyRefresh(
            refreshOnStart: true,
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
              _loadALL();
              _controller.finishLoad();
            },
            child: Container(
              padding: EdgeInsets.all(duSetHeight(5)),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  buildCard(cardInfo),
                  buildApps(_appList),
                  const buildList(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
