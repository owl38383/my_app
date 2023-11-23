import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/storage.dart';
import 'package:my_app/common/widgets/drawer.dart';
import 'package:my_app/global.dart';
import 'package:my_app/global_state.dart';
import 'package:my_app/pages/home/list_widget.dart';
import 'package:my_app/pages/home/tag_widget.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'card_widget.dart';
import 'provider/data_provider.dart';

class HomePageProvide extends StatefulWidget {
  const HomePageProvide({
    super.key,
  });

  @override
  State<HomePageProvide> createState() => _HomePageProvideState();
}

class _HomePageProvideState extends State<HomePageProvide> {
  CompanyListData _companyListData = CompanyListData();
  UserLoginRespData _userLoginRespEntity = UserLoginRespData();

  // 显示侧边栏
  bool isDrawerOpen = false;
  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    // 刷新卡片
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  _loadALL() async {
    _userLoginRespEntity = UserLoginRespData.fromJson(
        StorageUtil().getJson(STORAGE_USER_PROFILE_KEY));
    _companyListData = CompanyListData.fromJson(
        StorageUtil().getJson(STORAGE_USER_COMPANY_KEY));
    // 刷新数据
    Provider.of<DataProvider>(context, listen: false).refresh();
    Provider.of<EventProvider>(context, listen: false).refresh();

    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // 这里设置为0就没有阴影了
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  Scaffold.of(context).openDrawer();
                });
              },
            );
          },
        ),
        title: Text(context.watch<GlobalState>().getCompanyName()),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: () {},
          )
        ],
      ),
      drawer: Consumer<GlobalState>(
        builder:
            (BuildContext context, GlobalState globalState, Widget? child) {
          return MyDrawer(
            companyListData: _companyListData,
            selectedValue: globalState.getCompanyId(),
            userInfoData: _userLoginRespEntity,
            onItemSelected: (CompanyListDataListInfoCompany value) {
              Global.selectCompany['companyId'] = value.companyId;
              Global.selectCompany['companyType'] = value.thingType;
              // 状态通知
              Provider.of<GlobalState>(context, listen: false)
                  .updateSelectCompanyInfo(
                      value.companyId, value.thingType, value.companyName);
              _loadALL();
            },
          );
        },
      ), // 添加侧边栏
      body: EasyRefresh.builder(
        refreshOnStart: true,
        onLoad: () async {
          Provider.of<EventProvider>(context, listen: false).loadMore();
          return IndicatorResult.none;
        },
        onRefresh: () async {
          _loadALL();
          return IndicatorResult.none;
        },
        childBuilder: (context, physics) {
          return Container(
            padding: EdgeInsets.all(duSetHeight(5)),
            child: ListView(
              physics: physics,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                buildCard(context.watch<DataProvider>().cardInfo),
                BuildApps(),
                TabAction(onTagTap: (String enumConfirmType) {
                  Provider.of<EventProvider>(context, listen: false)
                      .changestatusCategory(enumConfirmType);
                }),
                BuildEventList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
