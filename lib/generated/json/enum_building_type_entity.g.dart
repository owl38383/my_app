import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_building_type_entity.dart';

EnumBuildingTypeEntity $EnumBuildingTypeEntityFromJson(Map<String, dynamic> json) {
  final EnumBuildingTypeEntity enumBuildingTypeEntity = EnumBuildingTypeEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumBuildingTypeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumBuildingTypeEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumBuildingTypeEntity.engName = engName;
  }
  return enumBuildingTypeEntity;
}

Map<String, dynamic> $EnumBuildingTypeEntityToJson(EnumBuildingTypeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumBuildingTypeEntityExtension on EnumBuildingTypeEntity {
  EnumBuildingTypeEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumBuildingTypeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}