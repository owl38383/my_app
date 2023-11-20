import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

class buildList extends StatefulWidget {
  const buildList({super.key});

  @override
  State<buildList> createState() => _buildListState();
}

class EnumConfirmType {
  late String type;
  late String name;

  EnumConfirmType(this.type, this.name);
}

class _buildListState extends State<buildList> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  List<EnumConfirmType> confirmType = [];

  // 标签控制器
  late TabController _tabController;

  Widget buildPage(EnumConfirmType tag) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(tag), // 假设fetchData是一个异步函数，根据标签类型请求远程数据
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text(tag.name));
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return buildDataPage((snapshot.data ?? [])); // 将数据展示在页面上
        }
      },
    );
  }

  Future<List<dynamic>> fetchData(EnumConfirmType tag) async {
    Map<String, dynamic> params = {
      'page_no': 0,
      'page_size': 20,
      'enum_confirm_type': 0,
      'status_category': tag.type,
    };
    Map<String, dynamic> event = await EventAPI.getEventListHomePage(params: params);
    return event['list']; // 返回模拟数据
  }

  Widget buildDataPage(List<dynamic> data) {
    return Container(
      child: Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> item = data[index];
            return _buildDataItem(item);
          },
        ),
      ),
    );
  }

  Widget _buildDataItem(Map<String, dynamic> item) {
    String thingId = (item['location']?['simple_id'] ?? item['rt_event_confirm']['thing_id']).toString();
    String enumDeviceStatus = (item['rt_event_confirm']?['enum_device_status']?['name']);
    String location =
        (item['location']?['building_name'] + item['location']?['floor_name'] + item['location']?['area_name']);
    String acceptTime = (item['rt_event_confirm']['accept_time']);
    String deviceName = (item['location']['device_name']);
    String companyName = (item['rt_event_confirm']['company_name']);
    return Container(
      height: duSetHeight(100),
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white, // 设置Card的颜色
        border: Border.fromBorderSide(Borders.primaryBorder),
        borderRadius: Radii.k6pxRadius, // 可以根据需要调整圆角
        boxShadow: [
          Shadows.primaryShadow,
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$deviceName'),
              Text('$companyName'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('编号：$thingId'),
                  Text('位置：$location'),
                  Text('告警时间：$acceptTime'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$enumDeviceStatus'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    confirmType.add(EnumConfirmType('alarm', '火警'));
    confirmType.add(EnumConfirmType('fault', '故障'));
    confirmType.add(EnumConfirmType('abnormal', '异常'));
    confirmType.add(EnumConfirmType('execute', '任务执行'));
    confirmType.add(EnumConfirmType('examine', '任务审批'));
    _tabController = TabController(length: confirmType.length, vsync: this);
    _tabController.addListener(() => print("当前点击的是第${_tabController.index}个tab"));
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用super.build
    return EasyRefresh.builder(
      onRefresh: () async {
        return IndicatorResult.success;
      },
      onLoad: () async {},
      childBuilder: (context, physics) {
        return Container(
          margin: EdgeInsets.only(top: duSetHeight(10)),
          padding: EdgeInsets.all(duSetHeight(5)),
          decoration: BoxDecoration(
            color: Colors.white, // 设置Card的颜色
            border: Border.fromBorderSide(Borders.primaryBorder),
            borderRadius: Radii.k6pxRadius, // 可以根据需要调整圆角
            boxShadow: [
              Shadows.primaryShadow,
            ],
          ),
          child: DefaultTabController(
            length: confirmType.length, // 你的标签数量
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  tabs: confirmType.map((tag) => Tab(text: tag.name)).toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: confirmType.map((tag) => buildPage(tag)).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
