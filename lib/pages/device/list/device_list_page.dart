import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/device/device_detail_entity.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/pages/device/list/device_list_view_model.dart';
import 'package:provider/provider.dart';


@RoutePage()
class DeviceListPage extends StatefulWidget {
  const DeviceListPage({super.key});

  @override
  State<DeviceListPage> createState() => _DeviceListPageState();
}

class _DeviceListPageState extends State<DeviceListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<DeviceClassTypeViewModel>(context, listen: false).init();
    Provider.of<DeviceListViewModel>(context, listen: false).deviceListRequest.deviceThingType =
        Provider.of<DeviceClassTypeViewModel>(context, listen: false).selectType;
    Provider.of<DeviceListViewModel>(context, listen: false).refresh();
  }

  Widget _buildTags(BuildContext context, DeviceClassTypeViewModel deviceClassTypeViewModel,
      DeviceListViewModel deviceListViewModel) {
    return Container(
      height: duSetHeight(30),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        border: Border.fromBorderSide(Borders.primaryBorder),
        borderRadius: Radii.k6pxRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          deviceClassTypeViewModel.deviceClassTypeList.length,
          (index) {
            var type = deviceClassTypeViewModel.deviceClassTypeList[index];
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  deviceClassTypeViewModel.setType(type['type']);
                  deviceListViewModel.deviceListRequest.deviceThingType = type['type'];
                  deviceListViewModel.refresh();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: deviceClassTypeViewModel.selectType == type['type'] ? Colors.white : null,
                    borderRadius: Radii.k6pxRadius,
                  ),
                  child: Center(
                    child: textLine(type['name'], fontSize: 14.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, DeviceClassTypeViewModel deviceClassTypeViewModel,
      DeviceListViewModel deviceListViewModel) {
    return EasyRefresh(
      onRefresh: () {
        context.read<DeviceListViewModel>().refresh();
      },
      onLoad: () async {
        await context.read<DeviceListViewModel>().loadMore();
        return IndicatorResult.success;
      },
      child: ListView.builder(
        itemCount: deviceListViewModel.deviceList.length,
        itemBuilder: (context, index) {
          DeviceDetailEntity entity  = deviceListViewModel.deviceList[index];
          return Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
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
              child: GestureDetector(
                onTap: (){
                  context.router.push(DeviceDetailRoute(detailEntity: entity));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textLine(entity.infoDevice!.name!, fontSize: 14.0),
                        textLine(entity.infoThingsShilter!.enumShieldStatus!.name!, fontSize: 14.0),
                        textLine('编号:${entity.infoDevice!.thingId!}'),
                        textLine('位置：${entity.infoBuilding!.buildingName!}${entity.infoFloor!.name!}${entity.infoArea!.areaName!}${entity.infoDevice!.specific!}'),
                        textLine('最后数据上传：${entity.infoDevice!.lastActiveTime!}'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textLine(entity.infoDevice!.enumDeviceOnlineStatus!.status!,
                            fontSize: 14.0),
                        textLine(entity.infoDevice!.enumDeviceStatus!.name!,
                            fontSize: 14.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DeviceClassTypeViewModel deviceClassTypeViewModel = context.watch<DeviceClassTypeViewModel>();
    DeviceListViewModel deviceListViewModel = context.watch<DeviceListViewModel>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('设备列表'),
      ),
      body: Column(
        children: [
          _buildTags(context, deviceClassTypeViewModel, deviceListViewModel),
          Expanded(
            child: _buildList(context, deviceClassTypeViewModel, deviceListViewModel),
          ),
        ],
      ),
    );
  }
}
