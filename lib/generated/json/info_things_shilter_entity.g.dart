import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_things_shilter_entity.dart';

InfoThingsShilterEntity $InfoThingsShilterEntityFromJson(Map<String, dynamic> json) {
  final InfoThingsShilterEntity infoThingsShilterEntity = InfoThingsShilterEntity();
  final InfoThingsShilterEnumShieldStatus? enumShieldStatus = jsonConvert.convert<InfoThingsShilterEnumShieldStatus>(
      json['enum_shield_status']);
  if (enumShieldStatus != null) {
    infoThingsShilterEntity.enumShieldStatus = enumShieldStatus;
  }
  return infoThingsShilterEntity;
}

Map<String, dynamic> $InfoThingsShilterEntityToJson(InfoThingsShilterEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enum_shield_status'] = entity.enumShieldStatus?.toJson();
  return data;
}

extension InfoThingsShilterEntityExtension on InfoThingsShilterEntity {
  InfoThingsShilterEntity copyWith({
    InfoThingsShilterEnumShieldStatus? enumShieldStatus,
  }) {
    return InfoThingsShilterEntity()
      ..enumShieldStatus = enumShieldStatus ?? this.enumShieldStatus;
  }
}

InfoThingsShilterEnumShieldStatus $InfoThingsShilterEnumShieldStatusFromJson(Map<String, dynamic> json) {
  final InfoThingsShilterEnumShieldStatus infoThingsShilterEnumShieldStatus = InfoThingsShilterEnumShieldStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoThingsShilterEnumShieldStatus.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoThingsShilterEnumShieldStatus.name = name;
  }
  return infoThingsShilterEnumShieldStatus;
}

Map<String, dynamic> $InfoThingsShilterEnumShieldStatusToJson(InfoThingsShilterEnumShieldStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoThingsShilterEnumShieldStatusExtension on InfoThingsShilterEnumShieldStatus {
  InfoThingsShilterEnumShieldStatus copyWith({
    String? id,
    String? name,
  }) {
    return InfoThingsShilterEnumShieldStatus()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}