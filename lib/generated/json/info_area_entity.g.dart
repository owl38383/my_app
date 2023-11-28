import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_area_entity.dart';

InfoAreaEntity $InfoAreaEntityFromJson(Map<String, dynamic> json) {
  final InfoAreaEntity infoAreaEntity = InfoAreaEntity();
  final String? areaId = jsonConvert.convert<String>(json['area_id']);
  if (areaId != null) {
    infoAreaEntity.areaId = areaId;
  }
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    infoAreaEntity.buildingId = buildingId;
  }
  final String? floorId = jsonConvert.convert<String>(json['floor_id']);
  if (floorId != null) {
    infoAreaEntity.floorId = floorId;
  }
  final String? areaType = jsonConvert.convert<String>(json['area_type']);
  if (areaType != null) {
    infoAreaEntity.areaType = areaType;
  }
  final String? areaName = jsonConvert.convert<String>(json['area_name']);
  if (areaName != null) {
    infoAreaEntity.areaName = areaName;
  }
  final String? areaSize = jsonConvert.convert<String>(json['area_size']);
  if (areaSize != null) {
    infoAreaEntity.areaSize = areaSize;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    infoAreaEntity.desc = desc;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoAreaEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoAreaEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoAreaEntity.createrId = createrId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoAreaEntity.isDel = isDel;
  }
  final String? safetyResponsibilityName = jsonConvert.convert<String>(json['safety_responsibility_name']);
  if (safetyResponsibilityName != null) {
    infoAreaEntity.safetyResponsibilityName = safetyResponsibilityName;
  }
  final String? safetyResponsibilityPhone = jsonConvert.convert<String>(json['safety_responsibility_phone']);
  if (safetyResponsibilityPhone != null) {
    infoAreaEntity.safetyResponsibilityPhone = safetyResponsibilityPhone;
  }
  final String? safetyManagerName = jsonConvert.convert<String>(json['safety_manager_name']);
  if (safetyManagerName != null) {
    infoAreaEntity.safetyManagerName = safetyManagerName;
  }
  final String? safetyManagerPhone = jsonConvert.convert<String>(json['safety_manager_phone']);
  if (safetyManagerPhone != null) {
    infoAreaEntity.safetyManagerPhone = safetyManagerPhone;
  }
  return infoAreaEntity;
}

Map<String, dynamic> $InfoAreaEntityToJson(InfoAreaEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['area_id'] = entity.areaId;
  data['building_id'] = entity.buildingId;
  data['floor_id'] = entity.floorId;
  data['area_type'] = entity.areaType;
  data['area_name'] = entity.areaName;
  data['area_size'] = entity.areaSize;
  data['desc'] = entity.desc;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['is_del'] = entity.isDel;
  data['safety_responsibility_name'] = entity.safetyResponsibilityName;
  data['safety_responsibility_phone'] = entity.safetyResponsibilityPhone;
  data['safety_manager_name'] = entity.safetyManagerName;
  data['safety_manager_phone'] = entity.safetyManagerPhone;
  return data;
}

extension InfoAreaEntityExtension on InfoAreaEntity {
  InfoAreaEntity copyWith({
    String? areaId,
    String? buildingId,
    String? floorId,
    String? areaType,
    String? areaName,
    String? areaSize,
    String? desc,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? isDel,
    String? safetyResponsibilityName,
    String? safetyResponsibilityPhone,
    String? safetyManagerName,
    String? safetyManagerPhone,
  }) {
    return InfoAreaEntity()
      ..areaId = areaId ?? this.areaId
      ..buildingId = buildingId ?? this.buildingId
      ..floorId = floorId ?? this.floorId
      ..areaType = areaType ?? this.areaType
      ..areaName = areaName ?? this.areaName
      ..areaSize = areaSize ?? this.areaSize
      ..desc = desc ?? this.desc
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..isDel = isDel ?? this.isDel
      ..safetyResponsibilityName = safetyResponsibilityName ?? this.safetyResponsibilityName
      ..safetyResponsibilityPhone = safetyResponsibilityPhone ?? this.safetyResponsibilityPhone
      ..safetyManagerName = safetyManagerName ?? this.safetyManagerName
      ..safetyManagerPhone = safetyManagerPhone ?? this.safetyManagerPhone;
  }
}