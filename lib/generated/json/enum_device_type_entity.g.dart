import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_type_entity.dart';

EnumDeviceTypeEntity $EnumDeviceTypeEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceTypeEntity enumDeviceTypeEntity = EnumDeviceTypeEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceTypeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceTypeEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceTypeEntity.engName = engName;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    enumDeviceTypeEntity.enumDeviceClass = enumDeviceClass;
  }
  final String? defaultSystemType = jsonConvert.convert<String>(json['default_system_type']);
  if (defaultSystemType != null) {
    enumDeviceTypeEntity.defaultSystemType = defaultSystemType;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    enumDeviceTypeEntity.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    enumDeviceTypeEntity.isUsed = isUsed;
  }
  final String? iconClass = jsonConvert.convert<String>(json['icon_class']);
  if (iconClass != null) {
    enumDeviceTypeEntity.iconClass = iconClass;
  }
  return enumDeviceTypeEntity;
}

Map<String, dynamic> $EnumDeviceTypeEntityToJson(EnumDeviceTypeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['default_system_type'] = entity.defaultSystemType;
  data['is_st'] = entity.isSt;
  data['is_used'] = entity.isUsed;
  data['icon_class'] = entity.iconClass;
  return data;
}

extension EnumDeviceTypeEntityExtension on EnumDeviceTypeEntity {
  EnumDeviceTypeEntity copyWith({
    String? id,
    String? name,
    String? engName,
    String? enumDeviceClass,
    String? defaultSystemType,
    String? isSt,
    String? isUsed,
    String? iconClass,
  }) {
    return EnumDeviceTypeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..defaultSystemType = defaultSystemType ?? this.defaultSystemType
      ..isSt = isSt ?? this.isSt
      ..isUsed = isUsed ?? this.isUsed
      ..iconClass = iconClass ?? this.iconClass;
  }
}