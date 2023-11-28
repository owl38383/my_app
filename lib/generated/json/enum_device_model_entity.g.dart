import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_model_entity.dart';

EnumDeviceModelEntity $EnumDeviceModelEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceModelEntity enumDeviceModelEntity = EnumDeviceModelEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceModelEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceModelEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceModelEntity.engName = engName;
  }
  final String? modelCode = jsonConvert.convert<String>(json['model_code']);
  if (modelCode != null) {
    enumDeviceModelEntity.modelCode = modelCode;
  }
  final String? brand = jsonConvert.convert<String>(json['brand']);
  if (brand != null) {
    enumDeviceModelEntity.brand = brand;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    enumDeviceModelEntity.thingType = thingType;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    enumDeviceModelEntity.enumDeviceClass = enumDeviceClass;
  }
  final String? enumDeviceType = jsonConvert.convert<String>(json['enum_device_type']);
  if (enumDeviceType != null) {
    enumDeviceModelEntity.enumDeviceType = enumDeviceType;
  }
  final String? enumDeviceBrand = jsonConvert.convert<String>(json['enum_device_brand']);
  if (enumDeviceBrand != null) {
    enumDeviceModelEntity.enumDeviceBrand = enumDeviceBrand;
  }
  final String? manufacturer = jsonConvert.convert<String>(json['manufacturer']);
  if (manufacturer != null) {
    enumDeviceModelEntity.manufacturer = manufacturer;
  }
  final String? aliveTime = jsonConvert.convert<String>(json['alive_time']);
  if (aliveTime != null) {
    enumDeviceModelEntity.aliveTime = aliveTime;
  }
  final String? extJson = jsonConvert.convert<String>(json['ext_json']);
  if (extJson != null) {
    enumDeviceModelEntity.extJson = extJson;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    enumDeviceModelEntity.isUsed = isUsed;
  }
  final String? isNeedProtocol = jsonConvert.convert<String>(json['is_need_protocol']);
  if (isNeedProtocol != null) {
    enumDeviceModelEntity.isNeedProtocol = isNeedProtocol;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    enumDeviceModelEntity.tags = tags;
  }
  final String? isSupportCommand = jsonConvert.convert<String>(json['is_support_command']);
  if (isSupportCommand != null) {
    enumDeviceModelEntity.isSupportCommand = isSupportCommand;
  }
  return enumDeviceModelEntity;
}

Map<String, dynamic> $EnumDeviceModelEntityToJson(EnumDeviceModelEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['model_code'] = entity.modelCode;
  data['brand'] = entity.brand;
  data['thing_type'] = entity.thingType;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['enum_device_type'] = entity.enumDeviceType;
  data['enum_device_brand'] = entity.enumDeviceBrand;
  data['manufacturer'] = entity.manufacturer;
  data['alive_time'] = entity.aliveTime;
  data['ext_json'] = entity.extJson;
  data['is_used'] = entity.isUsed;
  data['is_need_protocol'] = entity.isNeedProtocol;
  data['tags'] = entity.tags;
  data['is_support_command'] = entity.isSupportCommand;
  return data;
}

extension EnumDeviceModelEntityExtension on EnumDeviceModelEntity {
  EnumDeviceModelEntity copyWith({
    String? id,
    String? name,
    String? engName,
    String? modelCode,
    String? brand,
    String? thingType,
    String? enumDeviceClass,
    String? enumDeviceType,
    String? enumDeviceBrand,
    String? manufacturer,
    String? aliveTime,
    String? extJson,
    String? isUsed,
    String? isNeedProtocol,
    String? tags,
    String? isSupportCommand,
  }) {
    return EnumDeviceModelEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..modelCode = modelCode ?? this.modelCode
      ..brand = brand ?? this.brand
      ..thingType = thingType ?? this.thingType
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceBrand = enumDeviceBrand ?? this.enumDeviceBrand
      ..manufacturer = manufacturer ?? this.manufacturer
      ..aliveTime = aliveTime ?? this.aliveTime
      ..extJson = extJson ?? this.extJson
      ..isUsed = isUsed ?? this.isUsed
      ..isNeedProtocol = isNeedProtocol ?? this.isNeedProtocol
      ..tags = tags ?? this.tags
      ..isSupportCommand = isSupportCommand ?? this.isSupportCommand;
  }
}