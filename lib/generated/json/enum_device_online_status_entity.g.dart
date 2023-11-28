import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_online_status_entity.dart';

EnumDeviceOnlineStatusEntity $EnumDeviceOnlineStatusEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceOnlineStatusEntity enumDeviceOnlineStatusEntity = EnumDeviceOnlineStatusEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceOnlineStatusEntity.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    enumDeviceOnlineStatusEntity.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    enumDeviceOnlineStatusEntity.engStatus = engStatus;
  }
  return enumDeviceOnlineStatusEntity;
}

Map<String, dynamic> $EnumDeviceOnlineStatusEntityToJson(EnumDeviceOnlineStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension EnumDeviceOnlineStatusEntityExtension on EnumDeviceOnlineStatusEntity {
  EnumDeviceOnlineStatusEntity copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return EnumDeviceOnlineStatusEntity()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}