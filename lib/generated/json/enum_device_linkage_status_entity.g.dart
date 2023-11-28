import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_linkage_status_entity.dart';

EnumDeviceLinkageStatusEntity $EnumDeviceLinkageStatusEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceLinkageStatusEntity enumDeviceLinkageStatusEntity = EnumDeviceLinkageStatusEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceLinkageStatusEntity.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    enumDeviceLinkageStatusEntity.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    enumDeviceLinkageStatusEntity.engStatus = engStatus;
  }
  return enumDeviceLinkageStatusEntity;
}

Map<String, dynamic> $EnumDeviceLinkageStatusEntityToJson(EnumDeviceLinkageStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension EnumDeviceLinkageStatusEntityExtension on EnumDeviceLinkageStatusEntity {
  EnumDeviceLinkageStatusEntity copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return EnumDeviceLinkageStatusEntity()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}