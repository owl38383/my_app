import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_building_fire_level_entity.dart';

EnumBuildingFireLevelEntity $EnumBuildingFireLevelEntityFromJson(Map<String, dynamic> json) {
  final EnumBuildingFireLevelEntity enumBuildingFireLevelEntity = EnumBuildingFireLevelEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumBuildingFireLevelEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumBuildingFireLevelEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumBuildingFireLevelEntity.engName = engName;
  }
  return enumBuildingFireLevelEntity;
}

Map<String, dynamic> $EnumBuildingFireLevelEntityToJson(EnumBuildingFireLevelEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumBuildingFireLevelEntityExtension on EnumBuildingFireLevelEntity {
  EnumBuildingFireLevelEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumBuildingFireLevelEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}