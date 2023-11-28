import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_status_entity.dart';

EnumDeviceStatusEntity $EnumDeviceStatusEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceStatusEntity enumDeviceStatusEntity = EnumDeviceStatusEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceStatusEntity.id = id;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    enumDeviceStatusEntity.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceStatusEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceStatusEntity.engName = engName;
  }
  final String? shortName = jsonConvert.convert<String>(json['short_name']);
  if (shortName != null) {
    enumDeviceStatusEntity.shortName = shortName;
  }
  final String? engShortName = jsonConvert.convert<String>(json['eng_short_name']);
  if (engShortName != null) {
    enumDeviceStatusEntity.engShortName = engShortName;
  }
  final String? statusCategory = jsonConvert.convert<String>(json['status_category']);
  if (statusCategory != null) {
    enumDeviceStatusEntity.statusCategory = statusCategory;
  }
  return enumDeviceStatusEntity;
}

Map<String, dynamic> $EnumDeviceStatusEntityToJson(EnumDeviceStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['short_name'] = entity.shortName;
  data['eng_short_name'] = entity.engShortName;
  data['status_category'] = entity.statusCategory;
  return data;
}

extension EnumDeviceStatusEntityExtension on EnumDeviceStatusEntity {
  EnumDeviceStatusEntity copyWith({
    String? id,
    String? thingType,
    String? name,
    String? engName,
    String? shortName,
    String? engShortName,
    String? statusCategory,
  }) {
    return EnumDeviceStatusEntity()
      ..id = id ?? this.id
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..shortName = shortName ?? this.shortName
      ..engShortName = engShortName ?? this.engShortName
      ..statusCategory = statusCategory ?? this.statusCategory;
  }
}