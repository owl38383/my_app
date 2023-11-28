import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_device_dtu_entity.dart';

InfoDeviceDtuEntity $InfoDeviceDtuEntityFromJson(Map<String, dynamic> json) {
  final InfoDeviceDtuEntity infoDeviceDtuEntity = InfoDeviceDtuEntity();
  final String? thingId = jsonConvert.convert<String>(json['thing_id']);
  if (thingId != null) {
    infoDeviceDtuEntity.thingId = thingId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoDeviceDtuEntity.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceDtuEntity.name = name;
  }
  final InfoDeviceDtuEnumDeviceModel? enumDeviceModel = jsonConvert.convert<InfoDeviceDtuEnumDeviceModel>(
      json['enum_device_model']);
  if (enumDeviceModel != null) {
    infoDeviceDtuEntity.enumDeviceModel = enumDeviceModel;
  }
  final InfoDeviceDtuEnumDeviceClass? enumDeviceClass = jsonConvert.convert<InfoDeviceDtuEnumDeviceClass>(
      json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceDtuEntity.enumDeviceClass = enumDeviceClass;
  }
  final InfoDeviceDtuEnumDeviceType? enumDeviceType = jsonConvert.convert<InfoDeviceDtuEnumDeviceType>(
      json['enum_device_type']);
  if (enumDeviceType != null) {
    infoDeviceDtuEntity.enumDeviceType = enumDeviceType;
  }
  return infoDeviceDtuEntity;
}

Map<String, dynamic> $InfoDeviceDtuEntityToJson(InfoDeviceDtuEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['thing_id'] = entity.thingId;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['enum_device_model'] = entity.enumDeviceModel?.toJson();
  data['enum_device_class'] = entity.enumDeviceClass?.toJson();
  data['enum_device_type'] = entity.enumDeviceType?.toJson();
  return data;
}

extension InfoDeviceDtuEntityExtension on InfoDeviceDtuEntity {
  InfoDeviceDtuEntity copyWith({
    String? thingId,
    String? thingType,
    String? name,
    InfoDeviceDtuEnumDeviceModel? enumDeviceModel,
    InfoDeviceDtuEnumDeviceClass? enumDeviceClass,
    InfoDeviceDtuEnumDeviceType? enumDeviceType,
  }) {
    return InfoDeviceDtuEntity()
      ..thingId = thingId ?? this.thingId
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..enumDeviceModel = enumDeviceModel ?? this.enumDeviceModel
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType;
  }
}

InfoDeviceDtuEnumDeviceModel $InfoDeviceDtuEnumDeviceModelFromJson(Map<String, dynamic> json) {
  final InfoDeviceDtuEnumDeviceModel infoDeviceDtuEnumDeviceModel = InfoDeviceDtuEnumDeviceModel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceDtuEnumDeviceModel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceDtuEnumDeviceModel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceDtuEnumDeviceModel.engName = engName;
  }
  final String? modelCode = jsonConvert.convert<String>(json['model_code']);
  if (modelCode != null) {
    infoDeviceDtuEnumDeviceModel.modelCode = modelCode;
  }
  final String? brand = jsonConvert.convert<String>(json['brand']);
  if (brand != null) {
    infoDeviceDtuEnumDeviceModel.brand = brand;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoDeviceDtuEnumDeviceModel.thingType = thingType;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceDtuEnumDeviceModel.enumDeviceClass = enumDeviceClass;
  }
  final String? enumDeviceType = jsonConvert.convert<String>(json['enum_device_type']);
  if (enumDeviceType != null) {
    infoDeviceDtuEnumDeviceModel.enumDeviceType = enumDeviceType;
  }
  final String? enumDeviceBrand = jsonConvert.convert<String>(json['enum_device_brand']);
  if (enumDeviceBrand != null) {
    infoDeviceDtuEnumDeviceModel.enumDeviceBrand = enumDeviceBrand;
  }
  final String? manufacturer = jsonConvert.convert<String>(json['manufacturer']);
  if (manufacturer != null) {
    infoDeviceDtuEnumDeviceModel.manufacturer = manufacturer;
  }
  final String? aliveTime = jsonConvert.convert<String>(json['alive_time']);
  if (aliveTime != null) {
    infoDeviceDtuEnumDeviceModel.aliveTime = aliveTime;
  }
  final String? extJson = jsonConvert.convert<String>(json['ext_json']);
  if (extJson != null) {
    infoDeviceDtuEnumDeviceModel.extJson = extJson;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceDtuEnumDeviceModel.isUsed = isUsed;
  }
  final String? isNeedProtocol = jsonConvert.convert<String>(json['is_need_protocol']);
  if (isNeedProtocol != null) {
    infoDeviceDtuEnumDeviceModel.isNeedProtocol = isNeedProtocol;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    infoDeviceDtuEnumDeviceModel.tags = tags;
  }
  final String? isSupportCommand = jsonConvert.convert<String>(json['is_support_command']);
  if (isSupportCommand != null) {
    infoDeviceDtuEnumDeviceModel.isSupportCommand = isSupportCommand;
  }
  return infoDeviceDtuEnumDeviceModel;
}

Map<String, dynamic> $InfoDeviceDtuEnumDeviceModelToJson(InfoDeviceDtuEnumDeviceModel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['model_code'] = entity.modelCode;
  data['brand'] = entity.brand;
  data['thing_type'] = entity.thingType;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['enum_device_type'] = entity.enumDeviceType;
  data['enum_device_brand'] = entity.enumDeviceBrand;
  data['manufacturer'] = entity.manufacturer;
  data['alive_time'] = entity.aliveTime;
  data['ext_json'] = entity.extJson;
  data['is_used'] = entity.isUsed;
  data['is_need_protocol'] = entity.isNeedProtocol;
  data['tags'] = entity.tags;
  data['is_support_command'] = entity.isSupportCommand;
  return data;
}

extension InfoDeviceDtuEnumDeviceModelExtension on InfoDeviceDtuEnumDeviceModel {
  InfoDeviceDtuEnumDeviceModel copyWith({
    String? id,
    String? name,
    String? engName,
    String? modelCode,
    String? brand,
    String? thingType,
    String? enumDeviceClass,
    String? enumDeviceType,
    String? enumDeviceBrand,
    String? manufacturer,
    String? aliveTime,
    String? extJson,
    String? isUsed,
    String? isNeedProtocol,
    String? tags,
    String? isSupportCommand,
  }) {
    return InfoDeviceDtuEnumDeviceModel()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..modelCode = modelCode ?? this.modelCode
      ..brand = brand ?? this.brand
      ..thingType = thingType ?? this.thingType
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceBrand = enumDeviceBrand ?? this.enumDeviceBrand
      ..manufacturer = manufacturer ?? this.manufacturer
      ..aliveTime = aliveTime ?? this.aliveTime
      ..extJson = extJson ?? this.extJson
      ..isUsed = isUsed ?? this.isUsed
      ..isNeedProtocol = isNeedProtocol ?? this.isNeedProtocol
      ..tags = tags ?? this.tags
      ..isSupportCommand = isSupportCommand ?? this.isSupportCommand;
  }
}

InfoDeviceDtuEnumDeviceClass $InfoDeviceDtuEnumDeviceClassFromJson(Map<String, dynamic> json) {
  final InfoDeviceDtuEnumDeviceClass infoDeviceDtuEnumDeviceClass = InfoDeviceDtuEnumDeviceClass();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceDtuEnumDeviceClass.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceDtuEnumDeviceClass.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceDtuEnumDeviceClass.engName = engName;
  }
  final String? classType = jsonConvert.convert<String>(json['class_type']);
  if (classType != null) {
    infoDeviceDtuEnumDeviceClass.classType = classType;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceDtuEnumDeviceClass.isUsed = isUsed;
  }
  final String? dtuFlag = jsonConvert.convert<String>(json['dtu_flag']);
  if (dtuFlag != null) {
    infoDeviceDtuEnumDeviceClass.dtuFlag = dtuFlag;
  }
  final String? componentFlag = jsonConvert.convert<String>(json['component_flag']);
  if (componentFlag != null) {
    infoDeviceDtuEnumDeviceClass.componentFlag = componentFlag;
  }
  return infoDeviceDtuEnumDeviceClass;
}

Map<String, dynamic> $InfoDeviceDtuEnumDeviceClassToJson(InfoDeviceDtuEnumDeviceClass entity) {
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

extension InfoDeviceDtuEnumDeviceClassExtension on InfoDeviceDtuEnumDeviceClass {
  InfoDeviceDtuEnumDeviceClass copyWith({
    String? id,
    String? name,
    String? engName,
    String? classType,
    String? isUsed,
    String? dtuFlag,
    String? componentFlag,
  }) {
    return InfoDeviceDtuEnumDeviceClass()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..classType = classType ?? this.classType
      ..isUsed = isUsed ?? this.isUsed
      ..dtuFlag = dtuFlag ?? this.dtuFlag
      ..componentFlag = componentFlag ?? this.componentFlag;
  }
}

InfoDeviceDtuEnumDeviceType $InfoDeviceDtuEnumDeviceTypeFromJson(Map<String, dynamic> json) {
  final InfoDeviceDtuEnumDeviceType infoDeviceDtuEnumDeviceType = InfoDeviceDtuEnumDeviceType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceDtuEnumDeviceType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceDtuEnumDeviceType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceDtuEnumDeviceType.engName = engName;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceDtuEnumDeviceType.enumDeviceClass = enumDeviceClass;
  }
  final String? defaultSystemType = jsonConvert.convert<String>(json['default_system_type']);
  if (defaultSystemType != null) {
    infoDeviceDtuEnumDeviceType.defaultSystemType = defaultSystemType;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    infoDeviceDtuEnumDeviceType.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceDtuEnumDeviceType.isUsed = isUsed;
  }
  final String? iconClass = jsonConvert.convert<String>(json['icon_class']);
  if (iconClass != null) {
    infoDeviceDtuEnumDeviceType.iconClass = iconClass;
  }
  return infoDeviceDtuEnumDeviceType;
}

Map<String, dynamic> $InfoDeviceDtuEnumDeviceTypeToJson(InfoDeviceDtuEnumDeviceType entity) {
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

extension InfoDeviceDtuEnumDeviceTypeExtension on InfoDeviceDtuEnumDeviceType {
  InfoDeviceDtuEnumDeviceType copyWith({
    String? id,
    String? name,
    String? engName,
    String? enumDeviceClass,
    String? defaultSystemType,
    String? isSt,
    String? isUsed,
    String? iconClass,
  }) {
    return InfoDeviceDtuEnumDeviceType()
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