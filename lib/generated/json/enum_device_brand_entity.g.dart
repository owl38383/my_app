import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_brand_entity.dart';

EnumDeviceBrandEntity $EnumDeviceBrandEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceBrandEntity enumDeviceBrandEntity = EnumDeviceBrandEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceBrandEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceBrandEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceBrandEntity.engName = engName;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    enumDeviceBrandEntity.isUsed = isUsed;
  }
  return enumDeviceBrandEntity;
}

Map<String, dynamic> $EnumDeviceBrandEntityToJson(EnumDeviceBrandEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_used'] = entity.isUsed;
  return data;
}

extension EnumDeviceBrandEntityExtension on EnumDeviceBrandEntity {
  EnumDeviceBrandEntity copyWith({
    String? id,
    String? name,
    String? engName,
    String? isUsed,
  }) {
    return EnumDeviceBrandEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isUsed = isUsed ?? this.isUsed;
  }
}