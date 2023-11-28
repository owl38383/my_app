import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_position_type_entity.dart';

EnumPositionTypeEntity $EnumPositionTypeEntityFromJson(Map<String, dynamic> json) {
  final EnumPositionTypeEntity enumPositionTypeEntity = EnumPositionTypeEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumPositionTypeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumPositionTypeEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumPositionTypeEntity.engName = engName;
  }
  return enumPositionTypeEntity;
}

Map<String, dynamic> $EnumPositionTypeEntityToJson(EnumPositionTypeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EnumPositionTypeEntityExtension on EnumPositionTypeEntity {
  EnumPositionTypeEntity copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EnumPositionTypeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}