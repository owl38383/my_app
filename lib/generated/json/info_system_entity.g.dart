import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_system_entity.dart';

InfoSystemEntity $InfoSystemEntityFromJson(Map<String, dynamic> json) {
  final InfoSystemEntity infoSystemEntity = InfoSystemEntity();
  final String? systemId = jsonConvert.convert<String>(json['system_id']);
  if (systemId != null) {
    infoSystemEntity.systemId = systemId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoSystemEntity.thingType = thingType;
  }
  final String? aliasSystemName = jsonConvert.convert<String>(json['alias_system_name']);
  if (aliasSystemName != null) {
    infoSystemEntity.aliasSystemName = aliasSystemName;
  }
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    infoSystemEntity.companyId = companyId;
  }
  final InfoSystemEnumSystemType? enumSystemType = jsonConvert.convert<InfoSystemEnumSystemType>(
      json['enum_system_type']);
  if (enumSystemType != null) {
    infoSystemEntity.enumSystemType = enumSystemType;
  }
  final InfoSystemEnumSystemStatus? enumSystemStatus = jsonConvert.convert<InfoSystemEnumSystemStatus>(
      json['enum_system_status']);
  if (enumSystemStatus != null) {
    infoSystemEntity.enumSystemStatus = enumSystemStatus;
  }
  final String? buildingTypeText = jsonConvert.convert<String>(json['building_type_text']);
  if (buildingTypeText != null) {
    infoSystemEntity.buildingTypeText = buildingTypeText;
  }
  final String? manufactureText = jsonConvert.convert<String>(json['manufacture_text']);
  if (manufactureText != null) {
    infoSystemEntity.manufactureText = manufactureText;
  }
  final String? maintenanceText = jsonConvert.convert<String>(json['maintenance_text']);
  if (maintenanceText != null) {
    infoSystemEntity.maintenanceText = maintenanceText;
  }
  final String? floorText = jsonConvert.convert<String>(json['floor_text']);
  if (floorText != null) {
    infoSystemEntity.floorText = floorText;
  }
  final String? deviceLocationText = jsonConvert.convert<String>(json['device_location_text']);
  if (deviceLocationText != null) {
    infoSystemEntity.deviceLocationText = deviceLocationText;
  }
  final String? controllerId = jsonConvert.convert<String>(json['controller_id']);
  if (controllerId != null) {
    infoSystemEntity.controllerId = controllerId;
  }
  final String? dtuId = jsonConvert.convert<String>(json['dtu_id']);
  if (dtuId != null) {
    infoSystemEntity.dtuId = dtuId;
  }
  final String? installTime = jsonConvert.convert<String>(json['install_time']);
  if (installTime != null) {
    infoSystemEntity.installTime = installTime;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoSystemEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoSystemEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoSystemEntity.createrId = createrId;
  }
  final String? remark = jsonConvert.convert<String>(json['remark']);
  if (remark != null) {
    infoSystemEntity.remark = remark;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoSystemEntity.isDel = isDel;
  }
  return infoSystemEntity;
}

Map<String, dynamic> $InfoSystemEntityToJson(InfoSystemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['system_id'] = entity.systemId;
  data['thing_type'] = entity.thingType;
  data['alias_system_name'] = entity.aliasSystemName;
  data['company_id'] = entity.companyId;
  data['enum_system_type'] = entity.enumSystemType?.toJson();
  data['enum_system_status'] = entity.enumSystemStatus?.toJson();
  data['building_type_text'] = entity.buildingTypeText;
  data['manufacture_text'] = entity.manufactureText;
  data['maintenance_text'] = entity.maintenanceText;
  data['floor_text'] = entity.floorText;
  data['device_location_text'] = entity.deviceLocationText;
  data['controller_id'] = entity.controllerId;
  data['dtu_id'] = entity.dtuId;
  data['install_time'] = entity.installTime;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['remark'] = entity.remark;
  data['is_del'] = entity.isDel;
  return data;
}

extension InfoSystemEntityExtension on InfoSystemEntity {
  InfoSystemEntity copyWith({
    String? systemId,
    String? thingType,
    String? aliasSystemName,
    String? companyId,
    InfoSystemEnumSystemType? enumSystemType,
    InfoSystemEnumSystemStatus? enumSystemStatus,
    String? buildingTypeText,
    String? manufactureText,
    String? maintenanceText,
    String? floorText,
    String? deviceLocationText,
    String? controllerId,
    String? dtuId,
    String? installTime,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? remark,
    String? isDel,
  }) {
    return InfoSystemEntity()
      ..systemId = systemId ?? this.systemId
      ..thingType = thingType ?? this.thingType
      ..aliasSystemName = aliasSystemName ?? this.aliasSystemName
      ..companyId = companyId ?? this.companyId
      ..enumSystemType = enumSystemType ?? this.enumSystemType
      ..enumSystemStatus = enumSystemStatus ?? this.enumSystemStatus
      ..buildingTypeText = buildingTypeText ?? this.buildingTypeText
      ..manufactureText = manufactureText ?? this.manufactureText
      ..maintenanceText = maintenanceText ?? this.maintenanceText
      ..floorText = floorText ?? this.floorText
      ..deviceLocationText = deviceLocationText ?? this.deviceLocationText
      ..controllerId = controllerId ?? this.controllerId
      ..dtuId = dtuId ?? this.dtuId
      ..installTime = installTime ?? this.installTime
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..remark = remark ?? this.remark
      ..isDel = isDel ?? this.isDel;
  }
}

InfoSystemEnumSystemType $InfoSystemEnumSystemTypeFromJson(Map<String, dynamic> json) {
  final InfoSystemEnumSystemType infoSystemEnumSystemType = InfoSystemEnumSystemType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoSystemEnumSystemType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoSystemEnumSystemType.name = name;
  }
  final String? stName = jsonConvert.convert<String>(json['st_name']);
  if (stName != null) {
    infoSystemEnumSystemType.stName = stName;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoSystemEnumSystemType.engName = engName;
  }
  final String? engStName = jsonConvert.convert<String>(json['eng_st_name']);
  if (engStName != null) {
    infoSystemEnumSystemType.engStName = engStName;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    infoSystemEnumSystemType.category = category;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    infoSystemEnumSystemType.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoSystemEnumSystemType.isUsed = isUsed;
  }
  return infoSystemEnumSystemType;
}

Map<String, dynamic> $InfoSystemEnumSystemTypeToJson(InfoSystemEnumSystemType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['st_name'] = entity.stName;
  data['eng_name'] = entity.engName;
  data['eng_st_name'] = entity.engStName;
  data['category'] = entity.category;
  data['is_st'] = entity.isSt;
  data['is_used'] = entity.isUsed;
  return data;
}

extension InfoSystemEnumSystemTypeExtension on InfoSystemEnumSystemType {
  InfoSystemEnumSystemType copyWith({
    String? id,
    String? name,
    String? stName,
    String? engName,
    String? engStName,
    String? category,
    String? isSt,
    String? isUsed,
  }) {
    return InfoSystemEnumSystemType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..stName = stName ?? this.stName
      ..engName = engName ?? this.engName
      ..engStName = engStName ?? this.engStName
      ..category = category ?? this.category
      ..isSt = isSt ?? this.isSt
      ..isUsed = isUsed ?? this.isUsed;
  }
}

InfoSystemEnumSystemStatus $InfoSystemEnumSystemStatusFromJson(Map<String, dynamic> json) {
  final InfoSystemEnumSystemStatus infoSystemEnumSystemStatus = InfoSystemEnumSystemStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoSystemEnumSystemStatus.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoSystemEnumSystemStatus.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoSystemEnumSystemStatus.engName = engName;
  }
  final String? isNormal = jsonConvert.convert<String>(json['is_normal']);
  if (isNormal != null) {
    infoSystemEnumSystemStatus.isNormal = isNormal;
  }
  return infoSystemEnumSystemStatus;
}

Map<String, dynamic> $InfoSystemEnumSystemStatusToJson(InfoSystemEnumSystemStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_normal'] = entity.isNormal;
  return data;
}

extension InfoSystemEnumSystemStatusExtension on InfoSystemEnumSystemStatus {
  InfoSystemEnumSystemStatus copyWith({
    String? id,
    String? name,
    String? engName,
    String? isNormal,
  }) {
    return InfoSystemEnumSystemStatus()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isNormal = isNormal ?? this.isNormal;
  }
}