import 'package:flutter/cupertino.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/api/api_response_entity.dart';
import 'package:my_app/common/entitys/device/device_detail_entity.dart';
import 'package:my_app/common/entitys/device/device_list_entity.dart';

class DeviceListRequest {
  int pageNo;
  int pageSize;
  String deviceThingType;
  String? enumDeviceStatus;
  String? enumDeviceOnlineStatus;
  String? enumDeviceModel;

  DeviceListRequest({
    required this.pageNo,
    required this.pageSize,
    required this.deviceThingType,
  });
}

class DeviceListViewModel extends ChangeNotifier {
  List<DeviceDetailEntity> _deviceList = [];
  int _total = 0;

  List<DeviceDetailEntity> get deviceList => _deviceList;

  int get total => _total;

  DeviceListViewModel();

  DeviceListRequest deviceListRequest = DeviceListRequest(pageNo: 0, pageSize: 20, deviceThingType: '');

  /// 额外参数
  /// device_thing_type
  String device_thing_type = '';

  /// 请求数据
  Future<List<DeviceDetailEntity>> _fetchData() async {
    try {
      Map<String, dynamic> params = {
        'page_no': deviceListRequest.pageNo,
        'page_size': deviceListRequest.pageSize,
        'device_thing_type': deviceListRequest.deviceThingType ??'',
        'enum_device_status': deviceListRequest.enumDeviceStatus ??'',
        'enum_device_online_status': deviceListRequest.enumDeviceOnlineStatus??'',
        'enum_device_model': deviceListRequest.enumDeviceModel??'',
      };
      ApiResponseEntity<DeviceListEntity> deviceList = await DeviceAPI.getDeviceListByAnyIds(params: params);
      _total = deviceList.data!.total;
      notifyListeners();
      return deviceList.data!.list;
    } catch (e) {
      // 处理异常
      print('Error fetching data: $e');
      rethrow; // 重新抛出异常
    }
  }

  /// 刷新
  Future<void> refresh() async {
    deviceListRequest.pageNo = 0;
    _deviceList = await _fetchData();
    notifyListeners();
  }

  /// 加载下一页
  Future<void> loadMore() async {
    deviceListRequest.pageNo++;
    _deviceList.addAll(await _fetchData());
    notifyListeners();
  }

  /// 重置筛选
  void resetFilter() {
    // 实现重置筛选逻辑
  }
}

class DeviceClassTypeViewModel extends ChangeNotifier {
  List<Map<String, dynamic>> deviceClassTypeList = [];
  String selectType = '';

  init() {
    deviceClassTypeList = [];
    deviceClassTypeList.add({'name': '部件', 'type': 'info_device_component'});
    deviceClassTypeList.add({'name': '控制器', 'type': 'info_device_controller'});
    deviceClassTypeList.add({'name': '传输设备', 'type': 'info_device_transmission'});
    deviceClassTypeList.add({'name': '独立式设备', 'type': 'info_device_dtu'});
    if (selectType.isEmpty) {
      selectType = deviceClassTypeList[0]['type'];
    }
  }

  setType(String type) {
    if (selectType != type) {
      selectType = type;
      notifyListeners();
    }
  }
}
