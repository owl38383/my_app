import 'dart:convert';

import 'package:my_app/common/entitys/device/device_list_entity.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';

/// 用户
class DeviceAPI {
  static Map<String, dynamic> getCompanyInfo() {
    return {
      'uid': Global.profile.userId,
      'company_id': Global.selectCompany['companyId'],
      'company_type': Global.selectCompany['companyType'],
      'id': Global.selectCompany['companyId'],
      'type': Global.selectCompany['companyType'],
    };
  }

  /// 获取设备列表
  /// page_no 当前页
  /// page_size 每页数量
  /// device_thing_type 设备种类
  /// enum_device_status	1 设备状态
  /// enum_device_online_status	666 设备在线状态
  /// enum_device_model	1810109 设备类型
  static Future<ApiResponseEntity<DeviceListEntity>> getDeviceListByAnyIds({Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil().get('/api/api_proxy/device/device_list_by_any_ids/', params: params);
    return ApiResponseEntity.fromJson(response);
  }


  /// 获取设备详情
  /// device_id
  /// device_type
  ///
  static Future<ApiResponseEntity<DeviceListEntity>> getDeviceInfo({Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil().get('/api/api_proxy/device/info/', params: params);
    return ApiResponseEntity.fromJson(response);
  }
}
