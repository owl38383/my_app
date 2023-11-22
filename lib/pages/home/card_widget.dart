import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

Widget buildCard(CountByCaredData cardInfo) {
  return Container(
    padding: EdgeInsets.all(duSetHeight(5)),
    height: duSetHeight(120),
    decoration: BoxDecoration(
      color: Colors.white, // 设置Card的颜色
      border: Border.fromBorderSide(Borders.primaryBorder),
      borderRadius: Radii.k6pxRadius, // 可以根据需要调整圆角
      boxShadow: [
        // Shadows.primaryShadow,
      ],
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.none,
              ),
              Text(
                '${cardInfo.deviceTotal}',
              ),
              Text(
                '设备总数',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${cardInfo.countAlarmDevice}',
              ),
              Text(
                '火警设备',
              ),
              Text(
                '${cardInfo.countFaultDevice}',
              ),
              Text(
                '异常设备',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${cardInfo.countFaultDevice}',
              ),
              Text(
                '故障设备',
              ),
              Text(
                '${cardInfo.offlineDeviceTotal}',
              ),
              Text(
                '离线设备',
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
