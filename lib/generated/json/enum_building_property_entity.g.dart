import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_building_property_entity.dart';

EnumBuildingPropertyEntity $EnumBuildingPropertyEntityFromJson(Map<String, dynamic> json) {
  final EnumBuildingPropertyEntity enumBuildingPropertyEntity = EnumBuildingPropertyEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumBuildingPropertyEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumBuildingPropertyEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumBuildingPropertyEntity.engName = engName;
  }
  return enumBuildingPropertyEntity;
}

Map<String, dynamic> $EnumBuildingPropertyEntityToJson(EnumBuildingPropertyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumBuildingPropertyEntityExtension on EnumBuildingPropertyEntity {
  EnumBuildingPropertyEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumBuildingPropertyEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}