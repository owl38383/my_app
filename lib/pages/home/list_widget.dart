import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/global_state.dart';
import 'package:my_app/pages/home/data_provider.dart';
import 'package:provider/provider.dart';

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

  late EnumConfirmType checkTag;

  // 标签控制器
  late TabController _tabController;

  Future<List<EventListHomePageDataList>> fetchData(EnumConfirmType tag) async {
    Map<String, dynamic> params = {
      'page_no': 0,
      'page_size': 20,
      'enum_confirm_type': 0,
      'status_category': tag.type,
    };
    EventListHomePageEntity event = await EventAPI.getEventListHomePage(params: params);
    return event.data.list; // 返回模拟数据
  }

  Widget buildPage(EnumConfirmType tag) {
    return FutureBuilder<List<EventListHomePageDataList>>(
      future: fetchData(tag),
      builder: (BuildContext context, AsyncSnapshot<List<EventListHomePageDataList>> snapshot) {
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

  Widget buildDataPage(List<EventListHomePageDataList> data) {
    return Container(
      child: Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            EventListHomePageDataList item = data[index];
            return _buildDataItem(item);
          },
        ),
      ),
    );
  }

  Widget _buildDataItem(EventListHomePageDataList item) {
    String thingId = (item.location.simpleId ?? item.rtEventConfirm.thingId).toString();
    String enumDeviceStatus = (item.rtEventConfirm.enumDeviceStatus.name);
    String location =
        item.location.buildingName + item.location.floorName + item.location.areaName + item.location.specific;
    String acceptTime = item.rtEventConfirm.acceptTime;
    String deviceName = item.location.deviceName;
    String companyName = item.rtEventConfirm.companyName;
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
              textLine('$deviceName', fontSize: 14.0),
              textLine('$companyName', fontSize: 14.0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textLine(
                    '编号：$thingId',
                  ),
                  textLine(
                    '位置：$location',
                  ),
                  textLine(
                    '告警时间：$acceptTime',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textLine('$enumDeviceStatus'),
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
  }


  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用super.build
    return Consumer<DataProvider>(
      builder: (BuildContext context, DataProvider value, Widget? child) {
        return Container(
          margin: EdgeInsets.only(top: duSetHeight(10)),
          padding: EdgeInsets.all(duSetHeight(5)),
          decoration: BoxDecoration(
            color: Colors.white, // 设置Card的颜色
            border: Border.fromBorderSide(Borders.primaryBorder),
            borderRadius: Radii.k6pxRadius, // 可以根据需要调整圆角  `
            boxShadow: [
              // Shadows.primaryShadow,
            ],
          ),
          // child: DefaultTabController(
          //   length: confirmType.length, // 你的标签数量
          //   child: Column(
          //     children: [
          //       TabBar(
          //         controller: _tabController,
          //         tabs: confirmType.map((tag) => Tab(text: tag.name)).toList(),
          //       ),
          //       TabBarView(
          //         controller: _tabController,
          //         children: confirmType.map((tag) => buildPage(tag)).toList(),
          //       ),
          //     ],
          //   ),
          // ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
