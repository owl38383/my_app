import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_building_fire_resistance_entity.dart';

EnumBuildingFireResistanceEntity $EnumBuildingFireResistanceEntityFromJson(Map<String, dynamic> json) {
  final EnumBuildingFireResistanceEntity enumBuildingFireResistanceEntity = EnumBuildingFireResistanceEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumBuildingFireResistanceEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumBuildingFireResistanceEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumBuildingFireResistanceEntity.engName = engName;
  }
  return enumBuildingFireResistanceEntity;
}

Map<String, dynamic> $EnumBuildingFireResistanceEntityToJson(EnumBuildingFireResistanceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumBuildingFireResistanceEntityExtension on EnumBuildingFireResistanceEntity {
  EnumBuildingFireResistanceEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumBuildingFireResistanceEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}