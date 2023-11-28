import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/device/device_detail_entity.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';

@RoutePage()
class DeviceDetailPage extends StatefulWidget {
  DeviceDetailEntity detailEntity;

  DeviceDetailPage({super.key, required this.detailEntity});

  @override
  State<DeviceDetailPage> createState() => _DeviceDetailPageState();
}

class _DeviceDetailPageState extends State<DeviceDetailPage> {
  Map<String, dynamic> data = {
    '设备ID': 'value1',
    '设备分类': 'value3',
    '设备类型': 'value3',
    '设备名称': 'value3',
    '联网状态': 'value3',
    '设备状态': 'value3',
    '所属系统': 'value3',
    '所属单位': 'value3',
    '所属建筑': 'value3',
    '所属楼层': 'value3',
    '所属区域': 'value3',
    '安装位置': 'value3',
    '安装时间': 'value3',
    '生产厂家': 'value3',
    '入网时间': 'value3',
    '最新活跃时间': 'value3',
    '设备负责人': 'value3',
    '联系方式': 'value3',
  };

  @override
  void initState() {
    super.initState();
    _loadAll();
  }

  _loadAll() {
    data = {
      '设备ID': widget.detailEntity.infoDevice!.thingId.toString(),
      '设备名称': widget.detailEntity.infoDevice!.name,
      '设备分类': widget.detailEntity.infoDevice!.enumDeviceType!.name,
      '设备类型': widget.detailEntity.infoDevice!.enumDeviceClass!.name,
      '联网状态': widget.detailEntity.infoDevice!.enumDeviceOnlineStatus!.status,
      '设备状态': widget.detailEntity.infoDevice!.enumDeviceStatus!.name,
      '所属系统': widget.detailEntity.infoSystem!.aliasSystemName,
      '所属单位': widget.detailEntity.infoCompany!.companyName,
      '所属建筑': widget.detailEntity.infoBuilding!.buildingName,
      '所属楼层': widget.detailEntity.infoFloor!.name,
      '所属区域': widget.detailEntity.infoArea!.areaName,
      '安装位置': widget.detailEntity.infoDevice!.specific,
      '安装时间': widget.detailEntity.infoDevice!.installTime,
      '生产厂家': widget.detailEntity.infoDevice!.enumDeviceBrand!.name,
      '入网时间': widget.detailEntity.infoDevice!.createTime,
      '最新活跃时间': widget.detailEntity.infoDevice!.lastActiveTime,
      '设备负责人': widget.detailEntity.infoDevice!.creater!.name,
      '联系方式': widget.detailEntity.infoDevice!.creater!.phoneNum,
    };
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(Borders.primaryBorder),
          borderRadius: Radii.k6pxRadius,
        ),
        child: Column(
          children: [
            Container(
              height: duSetHeight(200),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.fromBorderSide(Borders.primaryBorder),
                borderRadius: Radii.k6pxRadius,
              ),
              child: Image.network('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png'),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: duSetHeight(10)),
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    // 将 Map 转换为键值对的列表
                    List<MapEntry<String, dynamic>> entries = data.entries.toList();
                    return Container(
                      margin: EdgeInsets.only(top: duSetHeight(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textLine(entries[index].key, fontSize: 16.0),
                          textLine(entries[index].value, fontSize: 16.0),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
