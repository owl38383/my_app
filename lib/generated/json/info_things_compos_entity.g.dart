import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_things_compos_entity.dart';

InfoThingsComposEntity $InfoThingsComposEntityFromJson(Map<String, dynamic> json) {
  final InfoThingsComposEntity infoThingsComposEntity = InfoThingsComposEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoThingsComposEntity.id = id;
  }
  final String? thingId = jsonConvert.convert<String>(json['thing_id']);
  if (thingId != null) {
    infoThingsComposEntity.thingId = thingId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoThingsComposEntity.thingType = thingType;
  }
  final InfoThingsComposEnumDeviceType? enumDeviceType = jsonConvert.convert<InfoThingsComposEnumDeviceType>(
      json['enum_device_type']);
  if (enumDeviceType != null) {
    infoThingsComposEntity.enumDeviceType = enumDeviceType;
  }
  final InfoThingsComposEnumPositionType? enumPositionType = jsonConvert.convert<InfoThingsComposEnumPositionType>(
      json['enum_position_type']);
  if (enumPositionType != null) {
    infoThingsComposEntity.enumPositionType = enumPositionType;
  }
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    infoThingsComposEntity.companyId = companyId;
  }
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    infoThingsComposEntity.buildingId = buildingId;
  }
  final String? unitId = jsonConvert.convert<String>(json['unit_id']);
  if (unitId != null) {
    infoThingsComposEntity.unitId = unitId;
  }
  final String? floorId = jsonConvert.convert<String>(json['floor_id']);
  if (floorId != null) {
    infoThingsComposEntity.floorId = floorId;
  }
  final String? areaId = jsonConvert.convert<String>(json['area_id']);
  if (areaId != null) {
    infoThingsComposEntity.areaId = areaId;
  }
  final String? roomId = jsonConvert.convert<String>(json['room_id']);
  if (roomId != null) {
    infoThingsComposEntity.roomId = roomId;
  }
  final String? fileId = jsonConvert.convert<String>(json['file_id']);
  if (fileId != null) {
    infoThingsComposEntity.fileId = fileId;
  }
  final String? x = jsonConvert.convert<String>(json['x']);
  if (x != null) {
    infoThingsComposEntity.x = x;
  }
  final String? y = jsonConvert.convert<String>(json['y']);
  if (y != null) {
    infoThingsComposEntity.y = y;
  }
  final String? specific = jsonConvert.convert<String>(json['specific']);
  if (specific != null) {
    infoThingsComposEntity.specific = specific;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoThingsComposEntity.updateTime = updateTime;
  }
  final InfoThingsComposEnumDeviceClass? enumDeviceClass = jsonConvert.convert<InfoThingsComposEnumDeviceClass>(
      json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoThingsComposEntity.enumDeviceClass = enumDeviceClass;
  }
  final String? subdistrictId = jsonConvert.convert<String>(json['subdistrict_id']);
  if (subdistrictId != null) {
    infoThingsComposEntity.subdistrictId = subdistrictId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoThingsComposEntity.isDel = isDel;
  }
  final String? composType = jsonConvert.convert<String>(json['compos_type']);
  if (composType != null) {
    infoThingsComposEntity.composType = composType;
  }
  return infoThingsComposEntity;
}

Map<String, dynamic> $InfoThingsComposEntityToJson(InfoThingsComposEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['thing_id'] = entity.thingId;
  data['thing_type'] = entity.thingType;
  data['enum_device_type'] = entity.enumDeviceType?.toJson();
  data['enum_position_type'] = entity.enumPositionType?.toJson();
  data['company_id'] = entity.companyId;
  data['building_id'] = entity.buildingId;
  data['unit_id'] = entity.unitId;
  data['floor_id'] = entity.floorId;
  data['area_id'] = entity.areaId;
  data['room_id'] = entity.roomId;
  data['file_id'] = entity.fileId;
  data['x'] = entity.x;
  data['y'] = entity.y;
  data['specific'] = entity.specific;
  data['update_time'] = entity.updateTime;
  data['enum_device_class'] = entity.enumDeviceClass?.toJson();
  data['subdistrict_id'] = entity.subdistrictId;
  data['is_del'] = entity.isDel;
  data['compos_type'] = entity.composType;
  return data;
}

extension InfoThingsComposEntityExtension on InfoThingsComposEntity {
  InfoThingsComposEntity copyWith({
    String? id,
    String? thingId,
    String? thingType,
    InfoThingsComposEnumDeviceType? enumDeviceType,
    InfoThingsComposEnumPositionType? enumPositionType,
    String? companyId,
    String? buildingId,
    String? unitId,
    String? floorId,
    String? areaId,
    String? roomId,
    String? fileId,
    String? x,
    String? y,
    String? specific,
    String? updateTime,
    InfoThingsComposEnumDeviceClass? enumDeviceClass,
    String? subdistrictId,
    String? isDel,
    String? composType,
  }) {
    return InfoThingsComposEntity()
      ..id = id ?? this.id
      ..thingId = thingId ?? this.thingId
      ..thingType = thingType ?? this.thingType
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumPositionType = enumPositionType ?? this.enumPositionType
      ..companyId = companyId ?? this.companyId
      ..buildingId = buildingId ?? this.buildingId
      ..unitId = unitId ?? this.unitId
      ..floorId = floorId ?? this.floorId
      ..areaId = areaId ?? this.areaId
      ..roomId = roomId ?? this.roomId
      ..fileId = fileId ?? this.fileId
      ..x = x ?? this.x
      ..y = y ?? this.y
      ..specific = specific ?? this.specific
      ..updateTime = updateTime ?? this.updateTime
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..subdistrictId = subdistrictId ?? this.subdistrictId
      ..isDel = isDel ?? this.isDel
      ..composType = composType ?? this.composType;
  }
}

InfoThingsComposEnumDeviceType $InfoThingsComposEnumDeviceTypeFromJson(Map<String, dynamic> json) {
  final InfoThingsComposEnumDeviceType infoThingsComposEnumDeviceType = InfoThingsComposEnumDeviceType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoThingsComposEnumDeviceType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoThingsComposEnumDeviceType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoThingsComposEnumDeviceType.engName = engName;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoThingsComposEnumDeviceType.enumDeviceClass = enumDeviceClass;
  }
  final String? defaultSystemType = jsonConvert.convert<String>(json['default_system_type']);
  if (defaultSystemType != null) {
    infoThingsComposEnumDeviceType.defaultSystemType = defaultSystemType;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    infoThingsComposEnumDeviceType.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoThingsComposEnumDeviceType.isUsed = isUsed;
  }
  final String? iconClass = jsonConvert.convert<String>(json['icon_class']);
  if (iconClass != null) {
    infoThingsComposEnumDeviceType.iconClass = iconClass;
  }
  return infoThingsComposEnumDeviceType;
}

Map<String, dynamic> $InfoThingsComposEnumDeviceTypeToJson(InfoThingsComposEnumDeviceType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['default_system_type'] = entity.defaultSystemType;
  data['is_st'] = entity.isSt;
  data['is_used'] = entity.isUsed;
  data['icon_class'] = entity.iconClass;
  return data;
}

extension InfoThingsComposEnumDeviceTypeExtension on InfoThingsComposEnumDeviceType {
  InfoThingsComposEnumDeviceType copyWith({
    String? id,
    String? name,
    String? engName,
    String? enumDeviceClass,
    String? defaultSystemType,
    String? isSt,
    String? isUsed,
    String? iconClass,
  }) {
    return InfoThingsComposEnumDeviceType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..defaultSystemType = defaultSystemType ?? this.defaultSystemType
      ..isSt = isSt ?? this.isSt
      ..isUsed = isUsed ?? this.isUsed
      ..iconClass = iconClass ?? this.iconClass;
  }
}

InfoThingsComposEnumPositionType $InfoThingsComposEnumPositionTypeFromJson(Map<String, dynamic> json) {
  final InfoThingsComposEnumPositionType infoThingsComposEnumPositionType = InfoThingsComposEnumPositionType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoThingsComposEnumPositionType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoThingsComposEnumPositionType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoThingsComposEnumPositionType.engName = engName;
  }
  return infoThingsComposEnumPositionType;
}

Map<String, dynamic> $InfoThingsComposEnumPositionTypeToJson(InfoThingsComposEnumPositionType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoThingsComposEnumPositionTypeExtension on InfoThingsComposEnumPositionType {
  InfoThingsComposEnumPositionType copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoThingsComposEnumPositionType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoThingsComposEnumDeviceClass $InfoThingsComposEnumDeviceClassFromJson(Map<String, dynamic> json) {
  final InfoThingsComposEnumDeviceClass infoThingsComposEnumDeviceClass = InfoThingsComposEnumDeviceClass();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoThingsComposEnumDeviceClass.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoThingsComposEnumDeviceClass.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoThingsComposEnumDeviceClass.engName = engName;
  }
  final String? classType = jsonConvert.convert<String>(json['class_type']);
  if (classType != null) {
    infoThingsComposEnumDeviceClass.classType = classType;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoThingsComposEnumDeviceClass.isUsed = isUsed;
  }
  final String? dtuFlag = jsonConvert.convert<String>(json['dtu_flag']);
  if (dtuFlag != null) {
    infoThingsComposEnumDeviceClass.dtuFlag = dtuFlag;
  }
  final String? componentFlag = jsonConvert.convert<String>(json['component_flag']);
  if (componentFlag != null) {
    infoThingsComposEnumDeviceClass.componentFlag = componentFlag;
  }
  return infoThingsComposEnumDeviceClass;
}

Map<String, dynamic> $InfoThingsComposEnumDeviceClassToJson(InfoThingsComposEnumDeviceClass entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['class_type'] = entity.classType;
  data['is_used'] = entity.isUsed;
  data['dtu_flag'] = entity.dtuFlag;
  data['component_flag'] = entity.componentFlag;
  return data;
}

extension InfoThingsComposEnumDeviceClassExtension on InfoThingsComposEnumDeviceClass {
  InfoThingsComposEnumDeviceClass copyWith({
    String? id,
    String? name,
    String? engName,
    String? classType,
    String? isUsed,
    String? dtuFlag,
    String? componentFlag,
  }) {
    return InfoThingsComposEnumDeviceClass()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..classType = classType ?? this.classType
      ..isUsed = isUsed ?? this.isUsed
      ..dtuFlag = dtuFlag ?? this.dtuFlag
      ..componentFlag = componentFlag ?? this.componentFlag;
  }
}