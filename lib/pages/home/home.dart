import 'package:auto_route/auto_route.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/storage.dart';
import 'package:my_app/common/widgets/drawer.dart';
import 'package:my_app/global.dart';
import 'package:my_app/common/provider/global_state.dart';
import 'package:my_app/pages/home/list_widget.dart';
import 'package:my_app/pages/home/tag_widget.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'card_widget.dart';
import '../../common/provider/data_provider.dart';

class HomePageProvide extends StatefulWidget {
  const HomePageProvide({
    super.key,
  });

  @override
  State<HomePageProvide> createState() => _HomePageProvideState();
}

class _HomePageProvideState extends State<HomePageProvide> {
  UserLoginRespData _userLoginRespEntity = UserLoginRespData();
  final ScrollController _scrollController = ScrollController();
  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    // 请求单位数据
    Provider.of<CompanyListProvider>(context, listen: false).refresh();
    // 刷新卡片
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  _loadALL() async {
    _userLoginRespEntity = UserLoginRespData.fromJson(StorageUtil().getJson(STORAGE_USER_PROFILE_KEY));
    // 刷新数据
    Provider.of<DataProvider>(context, listen: false).refresh();
    Provider.of<EventProvider>(context, listen: false).refresh();
    setState(() {});
  }
  // 退出登录
  void _duLogout() {
    Global.removeProfile();
    context.router.replaceNamed('/sign_in');
  }
  // 跳转到用户设置
  void _duSetting() {
    context.router.pushNamed('/account');
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
        elevation: 0.0,
        // 这里设置为0就没有阴影了
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
      drawer: MyDrawer(
        selectedValue: Global.selectCompany['companyId'],
        companyListData: context.watch<CompanyListProvider>().companyListData,
        userInfoData: _userLoginRespEntity,
        onItemSelected: (CompanyListDataListInfoCompany value) {
          Global.selectCompany['companyId'] = value.companyId;
          Global.selectCompany['companyType'] = value.thingType;
          // 状态通知
          Provider.of<GlobalState>(context, listen: false)
              .updateSelectCompanyInfo(value.companyId, value.thingType, value.companyName);
          _loadALL();
        },
        onPreessedLogout: _duLogout,
        onPreessedSetting: _duSetting,
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
              controller: _scrollController,
              physics: physics,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                buildCard(context.watch<DataProvider>().cardInfo),
                BuildApps(),
                TabAction(onTagTap: (String enumConfirmType) {
                  Provider.of<EventProvider>(context, listen: false).changeStatusCategory(enumConfirmType);
                }),
                BuildEventList(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Visibility(
        visible: context.watch<EventProvider>().eventListHomePageDataList.length > 10,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(), // 设置为圆形
          ),
          onPressed: () {
            _scrollController.animateTo(
              0.0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: Icon(Icons.expand_less),
        ),
      ),
    );
  }

}
