import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/statistic/count_by_cared_entity.dart';

CountByCaredEntity $CountByCaredEntityFromJson(Map<String, dynamic> json) {
  final CountByCaredEntity countByCaredEntity = CountByCaredEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    countByCaredEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    countByCaredEntity.msg = msg;
  }
  final String? engMsg = jsonConvert.convert<String>(json['eng_msg']);
  if (engMsg != null) {
    countByCaredEntity.engMsg = engMsg;
  }
  final CountByCaredData? data = jsonConvert.convert<CountByCaredData>(json['data']);
  if (data != null) {
    countByCaredEntity.data = data;
  }
  return countByCaredEntity;
}

Map<String, dynamic> $CountByCaredEntityToJson(CountByCaredEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['eng_msg'] = entity.engMsg;
  data['data'] = entity.data.toJson();
  return data;
}

extension CountByCaredEntityExtension on CountByCaredEntity {
  CountByCaredEntity copyWith({
    int? code,
    String? msg,
    String? engMsg,
    CountByCaredData? data,
  }) {
    return CountByCaredEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..engMsg = engMsg ?? this.engMsg
      ..data = data ?? this.data;
  }
}

CountByCaredData $CountByCaredDataFromJson(Map<String, dynamic> json) {
  final CountByCaredData countByCaredData = CountByCaredData();
  final String? deviceTotal = jsonConvert.convert<String>(json['device_total']);
  if (deviceTotal != null) {
    countByCaredData.deviceTotal = deviceTotal;
  }
  final String? countAlarmDevice = jsonConvert.convert<String>(json['count_alarm_device']);
  if (countAlarmDevice != null) {
    countByCaredData.countAlarmDevice = countAlarmDevice;
  }
  final String? countFaultDevice = jsonConvert.convert<String>(json['count_fault_device']);
  if (countFaultDevice != null) {
    countByCaredData.countFaultDevice = countFaultDevice;
  }
  final String? countAbnormalDevice = jsonConvert.convert<String>(json['count_abnormal_device']);
  if (countAbnormalDevice != null) {
    countByCaredData.countAbnormalDevice = countAbnormalDevice;
  }
  final String? offlineDeviceTotal = jsonConvert.convert<String>(json['offline_device_total']);
  if (offlineDeviceTotal != null) {
    countByCaredData.offlineDeviceTotal = offlineDeviceTotal;
  }
  return countByCaredData;
}

Map<String, dynamic> $CountByCaredDataToJson(CountByCaredData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['device_total'] = entity.deviceTotal;
  data['count_alarm_device'] = entity.countAlarmDevice;
  data['count_fault_device'] = entity.countFaultDevice;
  data['count_abnormal_device'] = entity.countAbnormalDevice;
  data['offline_device_total'] = entity.offlineDeviceTotal;
  return data;
}

extension CountByCaredDataExtension on CountByCaredData {
  CountByCaredData copyWith({
    String? deviceTotal,
    String? countAlarmDevice,
    String? countFaultDevice,
    String? countAbnormalDevice,
    String? offlineDeviceTotal,
  }) {
    return CountByCaredData()
      ..deviceTotal = deviceTotal ?? this.deviceTotal
      ..countAlarmDevice = countAlarmDevice ?? this.countAlarmDevice
      ..countFaultDevice = countFaultDevice ?? this.countFaultDevice
      ..countAbnormalDevice = countAbnormalDevice ?? this.countAbnormalDevice
      ..offlineDeviceTotal = offlineDeviceTotal ?? this.offlineDeviceTotal;
  }
}