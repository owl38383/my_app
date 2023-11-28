import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_building_structure_entity.dart';

EnumBuildingStructureEntity $EnumBuildingStructureEntityFromJson(Map<String, dynamic> json) {
  final EnumBuildingStructureEntity enumBuildingStructureEntity = EnumBuildingStructureEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumBuildingStructureEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumBuildingStructureEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumBuildingStructureEntity.engName = engName;
  }
  return enumBuildingStructureEntity;
}

Map<String, dynamic> $EnumBuildingStructureEntityToJson(EnumBuildingStructureEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumBuildingStructureEntityExtension on EnumBuildingStructureEntity {
  EnumBuildingStructureEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumBuildingStructureEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}