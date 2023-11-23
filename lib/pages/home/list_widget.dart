import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/pages/home/provider/data_provider.dart';
import 'package:provider/provider.dart';

class BuildEventList extends StatefulWidget {
  BuildEventList({super.key});

  @override
  State<BuildEventList> createState() => _BuildEventListState();
}

class _BuildEventListState extends State<BuildEventList> {
  Widget _buildDataItem(EventListHomePageDataList item) {
    String thingId =
        (item.location.simpleId ?? item.rtEventConfirm.thingId).toString();
    String enumDeviceStatus = (item.rtEventConfirm.enumDeviceStatus.name);
    String location = item.location.buildingName +
        item.location.floorName +
        item.location.areaName +
        item.location.specific;
    String acceptTime = item.rtEventConfirm.acceptTime;
    String deviceName = item.location.deviceName;
    String companyName = item.rtEventConfirm.companyName;
    return Container(
      height: duSetHeight(100),
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: const BoxDecoration(
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
              textLine(deviceName, fontSize: 14.0),
              textLine(companyName, fontSize: 14.0),
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
                  textLine(enumDeviceStatus),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(5)),
      child: Column(
        children: List.generate(
            Provider.of<EventProvider>(context)
                .eventListHomePageDataList
                .length, (index) {
          return _buildDataItem(Provider.of<EventProvider>(context)
              .eventListHomePageDataList[index]);
        }),
      ),
    );
  }
}
