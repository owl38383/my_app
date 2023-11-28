import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_device_entity.dart';

InfoDeviceEntity $InfoDeviceEntityFromJson(Map<String, dynamic> json) {
  final InfoDeviceEntity infoDeviceEntity = InfoDeviceEntity();
  final String? thingId = jsonConvert.convert<String>(json['thing_id']);
  if (thingId != null) {
    infoDeviceEntity.thingId = thingId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoDeviceEntity.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEntity.name = name;
  }
  final InfoDeviceEnumDeviceStatus? enumDeviceStatus = jsonConvert.convert<InfoDeviceEnumDeviceStatus>(
      json['enum_device_status']);
  if (enumDeviceStatus != null) {
    infoDeviceEntity.enumDeviceStatus = enumDeviceStatus;
  }
  final String? simpleId = jsonConvert.convert<String>(json['simple_id']);
  if (simpleId != null) {
    infoDeviceEntity.simpleId = simpleId;
  }
  final InfoDeviceEnumDeviceType? enumDeviceType = jsonConvert.convert<InfoDeviceEnumDeviceType>(
      json['enum_device_type']);
  if (enumDeviceType != null) {
    infoDeviceEntity.enumDeviceType = enumDeviceType;
  }
  final InfoDeviceEnumDeviceModel? enumDeviceModel = jsonConvert.convert<InfoDeviceEnumDeviceModel>(
      json['enum_device_model']);
  if (enumDeviceModel != null) {
    infoDeviceEntity.enumDeviceModel = enumDeviceModel;
  }
  final InfoDeviceEnumDeviceClass? enumDeviceClass = jsonConvert.convert<InfoDeviceEnumDeviceClass>(
      json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceEntity.enumDeviceClass = enumDeviceClass;
  }
  final String? subClass = jsonConvert.convert<String>(json['sub_class']);
  if (subClass != null) {
    infoDeviceEntity.subClass = subClass;
  }
  final String? equipmentId = jsonConvert.convert<String>(json['equipment_id']);
  if (equipmentId != null) {
    infoDeviceEntity.equipmentId = equipmentId;
  }
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    infoDeviceEntity.companyId = companyId;
  }
  final String? deviceCode = jsonConvert.convert<String>(json['device_code']);
  if (deviceCode != null) {
    infoDeviceEntity.deviceCode = deviceCode;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoDeviceEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoDeviceEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoDeviceEntity.createrId = createrId;
  }
  final String? sendingFrequency = jsonConvert.convert<String>(json['sending_frequency']);
  if (sendingFrequency != null) {
    infoDeviceEntity.sendingFrequency = sendingFrequency;
  }
  final String? sensingFrequency = jsonConvert.convert<String>(json['sensing_frequency']);
  if (sensingFrequency != null) {
    infoDeviceEntity.sensingFrequency = sensingFrequency;
  }
  final String? versionId = jsonConvert.convert<String>(json['version_id']);
  if (versionId != null) {
    infoDeviceEntity.versionId = versionId;
  }
  final InfoDeviceEnumDeviceOnlineStatus? enumDeviceOnlineStatus = jsonConvert.convert<
      InfoDeviceEnumDeviceOnlineStatus>(json['enum_device_online_status']);
  if (enumDeviceOnlineStatus != null) {
    infoDeviceEntity.enumDeviceOnlineStatus = enumDeviceOnlineStatus;
  }
  final String? simNumber = jsonConvert.convert<String>(json['sim_number']);
  if (simNumber != null) {
    infoDeviceEntity.simNumber = simNumber;
  }
  final String? electricity = jsonConvert.convert<String>(json['electricity']);
  if (electricity != null) {
    infoDeviceEntity.electricity = electricity;
  }
  final String? specific = jsonConvert.convert<String>(json['specific']);
  if (specific != null) {
    infoDeviceEntity.specific = specific;
  }
  final String? signalStrength = jsonConvert.convert<String>(json['signal_strength']);
  if (signalStrength != null) {
    infoDeviceEntity.signalStrength = signalStrength;
  }
  final InfoDeviceEnumDeviceTransmitMode? enumDeviceTransmitMode = jsonConvert.convert<
      InfoDeviceEnumDeviceTransmitMode>(json['enum_device_transmit_mode']);
  if (enumDeviceTransmitMode != null) {
    infoDeviceEntity.enumDeviceTransmitMode = enumDeviceTransmitMode;
  }
  final dynamic enumDeviceLocalTransmitMode = json['enum_device_local_transmit_mode'];
  if (enumDeviceLocalTransmitMode != null) {
    infoDeviceEntity.enumDeviceLocalTransmitMode = enumDeviceLocalTransmitMode;
  }
  final String? extJson = jsonConvert.convert<String>(json['ext_json']);
  if (extJson != null) {
    infoDeviceEntity.extJson = extJson;
  }
  final String? installTime = jsonConvert.convert<String>(json['install_time']);
  if (installTime != null) {
    infoDeviceEntity.installTime = installTime;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    infoDeviceEntity.networkingDate = networkingDate;
  }
  final String? lastActiveTime = jsonConvert.convert<String>(json['last_active_time']);
  if (lastActiveTime != null) {
    infoDeviceEntity.lastActiveTime = lastActiveTime;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    infoDeviceEntity.remarks = remarks;
  }
  final InfoDeviceEnumDeviceLinkageStatus? enumDeviceLinkageStatus = jsonConvert.convert<
      InfoDeviceEnumDeviceLinkageStatus>(json['enum_device_linkage_status']);
  if (enumDeviceLinkageStatus != null) {
    infoDeviceEntity.enumDeviceLinkageStatus = enumDeviceLinkageStatus;
  }
  final dynamic enumEventFrequence = json['enum_event_frequence'];
  if (enumEventFrequence != null) {
    infoDeviceEntity.enumEventFrequence = enumEventFrequence;
  }
  final InfoDeviceEnumDeviceBrand? enumDeviceBrand = jsonConvert.convert<InfoDeviceEnumDeviceBrand>(
      json['enum_device_brand']);
  if (enumDeviceBrand != null) {
    infoDeviceEntity.enumDeviceBrand = enumDeviceBrand;
  }
  final String? installerId = jsonConvert.convert<String>(json['installer_id']);
  if (installerId != null) {
    infoDeviceEntity.installerId = installerId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoDeviceEntity.isDel = isDel;
  }
  final InfoDeviceEnumPositionType? enumPositionType = jsonConvert.convert<InfoDeviceEnumPositionType>(
      json['enum_position_type']);
  if (enumPositionType != null) {
    infoDeviceEntity.enumPositionType = enumPositionType;
  }
  final String? displayName = jsonConvert.convert<String>(json['display_name']);
  if (displayName != null) {
    infoDeviceEntity.displayName = displayName;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    infoDeviceEntity.account = account;
  }
  final String? telephone = jsonConvert.convert<String>(json['telephone']);
  if (telephone != null) {
    infoDeviceEntity.telephone = telephone;
  }
  final InfoDeviceCreater? creater = jsonConvert.convert<InfoDeviceCreater>(json['creater']);
  if (creater != null) {
    infoDeviceEntity.creater = creater;
  }
  return infoDeviceEntity;
}

Map<String, dynamic> $InfoDeviceEntityToJson(InfoDeviceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['thing_id'] = entity.thingId;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['enum_device_status'] = entity.enumDeviceStatus?.toJson();
  data['simple_id'] = entity.simpleId;
  data['enum_device_type'] = entity.enumDeviceType?.toJson();
  data['enum_device_model'] = entity.enumDeviceModel?.toJson();
  data['enum_device_class'] = entity.enumDeviceClass?.toJson();
  data['sub_class'] = entity.subClass;
  data['equipment_id'] = entity.equipmentId;
  data['company_id'] = entity.companyId;
  data['device_code'] = entity.deviceCode;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['sending_frequency'] = entity.sendingFrequency;
  data['sensing_frequency'] = entity.sensingFrequency;
  data['version_id'] = entity.versionId;
  data['enum_device_online_status'] = entity.enumDeviceOnlineStatus?.toJson();
  data['sim_number'] = entity.simNumber;
  data['electricity'] = entity.electricity;
  data['specific'] = entity.specific;
  data['signal_strength'] = entity.signalStrength;
  data['enum_device_transmit_mode'] = entity.enumDeviceTransmitMode?.toJson();
  data['enum_device_local_transmit_mode'] = entity.enumDeviceLocalTransmitMode;
  data['ext_json'] = entity.extJson;
  data['install_time'] = entity.installTime;
  data['networking_date'] = entity.networkingDate;
  data['last_active_time'] = entity.lastActiveTime;
  data['remarks'] = entity.remarks;
  data['enum_device_linkage_status'] = entity.enumDeviceLinkageStatus?.toJson();
  data['enum_event_frequence'] = entity.enumEventFrequence;
  data['enum_device_brand'] = entity.enumDeviceBrand?.toJson();
  data['installer_id'] = entity.installerId;
  data['is_del'] = entity.isDel;
  data['enum_position_type'] = entity.enumPositionType?.toJson();
  data['display_name'] = entity.displayName;
  data['account'] = entity.account;
  data['telephone'] = entity.telephone;
  data['creater'] = entity.creater?.toJson();
  return data;
}

extension InfoDeviceEntityExtension on InfoDeviceEntity {
  InfoDeviceEntity copyWith({
    String? thingId,
    String? thingType,
    String? name,
    InfoDeviceEnumDeviceStatus? enumDeviceStatus,
    String? simpleId,
    InfoDeviceEnumDeviceType? enumDeviceType,
    InfoDeviceEnumDeviceModel? enumDeviceModel,
    InfoDeviceEnumDeviceClass? enumDeviceClass,
    String? subClass,
    String? equipmentId,
    String? companyId,
    String? deviceCode,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? sendingFrequency,
    String? sensingFrequency,
    String? versionId,
    InfoDeviceEnumDeviceOnlineStatus? enumDeviceOnlineStatus,
    String? simNumber,
    String? electricity,
    String? specific,
    String? signalStrength,
    InfoDeviceEnumDeviceTransmitMode? enumDeviceTransmitMode,
    dynamic enumDeviceLocalTransmitMode,
    String? extJson,
    String? installTime,
    String? networkingDate,
    String? lastActiveTime,
    String? remarks,
    InfoDeviceEnumDeviceLinkageStatus? enumDeviceLinkageStatus,
    dynamic enumEventFrequence,
    InfoDeviceEnumDeviceBrand? enumDeviceBrand,
    String? installerId,
    String? isDel,
    InfoDeviceEnumPositionType? enumPositionType,
    String? displayName,
    String? account,
    String? telephone,
    InfoDeviceCreater? creater,
  }) {
    return InfoDeviceEntity()
      ..thingId = thingId ?? this.thingId
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..enumDeviceStatus = enumDeviceStatus ?? this.enumDeviceStatus
      ..simpleId = simpleId ?? this.simpleId
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceModel = enumDeviceModel ?? this.enumDeviceModel
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..subClass = subClass ?? this.subClass
      ..equipmentId = equipmentId ?? this.equipmentId
      ..companyId = companyId ?? this.companyId
      ..deviceCode = deviceCode ?? this.deviceCode
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..sendingFrequency = sendingFrequency ?? this.sendingFrequency
      ..sensingFrequency = sensingFrequency ?? this.sensingFrequency
      ..versionId = versionId ?? this.versionId
      ..enumDeviceOnlineStatus = enumDeviceOnlineStatus ?? this.enumDeviceOnlineStatus
      ..simNumber = simNumber ?? this.simNumber
      ..electricity = electricity ?? this.electricity
      ..specific = specific ?? this.specific
      ..signalStrength = signalStrength ?? this.signalStrength
      ..enumDeviceTransmitMode = enumDeviceTransmitMode ?? this.enumDeviceTransmitMode
      ..enumDeviceLocalTransmitMode = enumDeviceLocalTransmitMode ?? this.enumDeviceLocalTransmitMode
      ..extJson = extJson ?? this.extJson
      ..installTime = installTime ?? this.installTime
      ..networkingDate = networkingDate ?? this.networkingDate
      ..lastActiveTime = lastActiveTime ?? this.lastActiveTime
      ..remarks = remarks ?? this.remarks
      ..enumDeviceLinkageStatus = enumDeviceLinkageStatus ?? this.enumDeviceLinkageStatus
      ..enumEventFrequence = enumEventFrequence ?? this.enumEventFrequence
      ..enumDeviceBrand = enumDeviceBrand ?? this.enumDeviceBrand
      ..installerId = installerId ?? this.installerId
      ..isDel = isDel ?? this.isDel
      ..enumPositionType = enumPositionType ?? this.enumPositionType
      ..displayName = displayName ?? this.displayName
      ..account = account ?? this.account
      ..telephone = telephone ?? this.telephone
      ..creater = creater ?? this.creater;
  }
}

InfoDeviceEnumDeviceStatus $InfoDeviceEnumDeviceStatusFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceStatus infoDeviceEnumDeviceStatus = InfoDeviceEnumDeviceStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceStatus.id = id;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoDeviceEnumDeviceStatus.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceStatus.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceStatus.engName = engName;
  }
  final String? shortName = jsonConvert.convert<String>(json['short_name']);
  if (shortName != null) {
    infoDeviceEnumDeviceStatus.shortName = shortName;
  }
  final String? engShortName = jsonConvert.convert<String>(json['eng_short_name']);
  if (engShortName != null) {
    infoDeviceEnumDeviceStatus.engShortName = engShortName;
  }
  final String? statusCategory = jsonConvert.convert<String>(json['status_category']);
  if (statusCategory != null) {
    infoDeviceEnumDeviceStatus.statusCategory = statusCategory;
  }
  return infoDeviceEnumDeviceStatus;
}

Map<String, dynamic> $InfoDeviceEnumDeviceStatusToJson(InfoDeviceEnumDeviceStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['short_name'] = entity.shortName;
  data['eng_short_name'] = entity.engShortName;
  data['status_category'] = entity.statusCategory;
  return data;
}

extension InfoDeviceEnumDeviceStatusExtension on InfoDeviceEnumDeviceStatus {
  InfoDeviceEnumDeviceStatus copyWith({
    String? id,
    String? thingType,
    String? name,
    String? engName,
    String? shortName,
    String? engShortName,
    String? statusCategory,
  }) {
    return InfoDeviceEnumDeviceStatus()
      ..id = id ?? this.id
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..shortName = shortName ?? this.shortName
      ..engShortName = engShortName ?? this.engShortName
      ..statusCategory = statusCategory ?? this.statusCategory;
  }
}

InfoDeviceEnumDeviceType $InfoDeviceEnumDeviceTypeFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceType infoDeviceEnumDeviceType = InfoDeviceEnumDeviceType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceType.engName = engName;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceEnumDeviceType.enumDeviceClass = enumDeviceClass;
  }
  final String? defaultSystemType = jsonConvert.convert<String>(json['default_system_type']);
  if (defaultSystemType != null) {
    infoDeviceEnumDeviceType.defaultSystemType = defaultSystemType;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    infoDeviceEnumDeviceType.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceEnumDeviceType.isUsed = isUsed;
  }
  final String? iconClass = jsonConvert.convert<String>(json['icon_class']);
  if (iconClass != null) {
    infoDeviceEnumDeviceType.iconClass = iconClass;
  }
  return infoDeviceEnumDeviceType;
}

Map<String, dynamic> $InfoDeviceEnumDeviceTypeToJson(InfoDeviceEnumDeviceType entity) {
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

extension InfoDeviceEnumDeviceTypeExtension on InfoDeviceEnumDeviceType {
  InfoDeviceEnumDeviceType copyWith({
    String? id,
    String? name,
    String? engName,
    String? enumDeviceClass,
    String? defaultSystemType,
    String? isSt,
    String? isUsed,
    String? iconClass,
  }) {
    return InfoDeviceEnumDeviceType()
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

InfoDeviceEnumDeviceModel $InfoDeviceEnumDeviceModelFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceModel infoDeviceEnumDeviceModel = InfoDeviceEnumDeviceModel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceModel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceModel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceModel.engName = engName;
  }
  final String? modelCode = jsonConvert.convert<String>(json['model_code']);
  if (modelCode != null) {
    infoDeviceEnumDeviceModel.modelCode = modelCode;
  }
  final String? brand = jsonConvert.convert<String>(json['brand']);
  if (brand != null) {
    infoDeviceEnumDeviceModel.brand = brand;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoDeviceEnumDeviceModel.thingType = thingType;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    infoDeviceEnumDeviceModel.enumDeviceClass = enumDeviceClass;
  }
  final String? enumDeviceType = jsonConvert.convert<String>(json['enum_device_type']);
  if (enumDeviceType != null) {
    infoDeviceEnumDeviceModel.enumDeviceType = enumDeviceType;
  }
  final String? enumDeviceBrand = jsonConvert.convert<String>(json['enum_device_brand']);
  if (enumDeviceBrand != null) {
    infoDeviceEnumDeviceModel.enumDeviceBrand = enumDeviceBrand;
  }
  final String? manufacturer = jsonConvert.convert<String>(json['manufacturer']);
  if (manufacturer != null) {
    infoDeviceEnumDeviceModel.manufacturer = manufacturer;
  }
  final String? aliveTime = jsonConvert.convert<String>(json['alive_time']);
  if (aliveTime != null) {
    infoDeviceEnumDeviceModel.aliveTime = aliveTime;
  }
  final String? extJson = jsonConvert.convert<String>(json['ext_json']);
  if (extJson != null) {
    infoDeviceEnumDeviceModel.extJson = extJson;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceEnumDeviceModel.isUsed = isUsed;
  }
  final String? isNeedProtocol = jsonConvert.convert<String>(json['is_need_protocol']);
  if (isNeedProtocol != null) {
    infoDeviceEnumDeviceModel.isNeedProtocol = isNeedProtocol;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    infoDeviceEnumDeviceModel.tags = tags;
  }
  final String? isSupportCommand = jsonConvert.convert<String>(json['is_support_command']);
  if (isSupportCommand != null) {
    infoDeviceEnumDeviceModel.isSupportCommand = isSupportCommand;
  }
  return infoDeviceEnumDeviceModel;
}

Map<String, dynamic> $InfoDeviceEnumDeviceModelToJson(InfoDeviceEnumDeviceModel entity) {
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

extension InfoDeviceEnumDeviceModelExtension on InfoDeviceEnumDeviceModel {
  InfoDeviceEnumDeviceModel copyWith({
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
    return InfoDeviceEnumDeviceModel()
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

InfoDeviceEnumDeviceClass $InfoDeviceEnumDeviceClassFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceClass infoDeviceEnumDeviceClass = InfoDeviceEnumDeviceClass();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceClass.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceClass.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceClass.engName = engName;
  }
  final String? classType = jsonConvert.convert<String>(json['class_type']);
  if (classType != null) {
    infoDeviceEnumDeviceClass.classType = classType;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceEnumDeviceClass.isUsed = isUsed;
  }
  final String? dtuFlag = jsonConvert.convert<String>(json['dtu_flag']);
  if (dtuFlag != null) {
    infoDeviceEnumDeviceClass.dtuFlag = dtuFlag;
  }
  final String? componentFlag = jsonConvert.convert<String>(json['component_flag']);
  if (componentFlag != null) {
    infoDeviceEnumDeviceClass.componentFlag = componentFlag;
  }
  return infoDeviceEnumDeviceClass;
}

Map<String, dynamic> $InfoDeviceEnumDeviceClassToJson(InfoDeviceEnumDeviceClass entity) {
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

extension InfoDeviceEnumDeviceClassExtension on InfoDeviceEnumDeviceClass {
  InfoDeviceEnumDeviceClass copyWith({
    String? id,
    String? name,
    String? engName,
    String? classType,
    String? isUsed,
    String? dtuFlag,
    String? componentFlag,
  }) {
    return InfoDeviceEnumDeviceClass()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..classType = classType ?? this.classType
      ..isUsed = isUsed ?? this.isUsed
      ..dtuFlag = dtuFlag ?? this.dtuFlag
      ..componentFlag = componentFlag ?? this.componentFlag;
  }
}

InfoDeviceEnumDeviceOnlineStatus $InfoDeviceEnumDeviceOnlineStatusFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceOnlineStatus infoDeviceEnumDeviceOnlineStatus = InfoDeviceEnumDeviceOnlineStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceOnlineStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoDeviceEnumDeviceOnlineStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoDeviceEnumDeviceOnlineStatus.engStatus = engStatus;
  }
  return infoDeviceEnumDeviceOnlineStatus;
}

Map<String, dynamic> $InfoDeviceEnumDeviceOnlineStatusToJson(InfoDeviceEnumDeviceOnlineStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoDeviceEnumDeviceOnlineStatusExtension on InfoDeviceEnumDeviceOnlineStatus {
  InfoDeviceEnumDeviceOnlineStatus copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return InfoDeviceEnumDeviceOnlineStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoDeviceEnumDeviceTransmitMode $InfoDeviceEnumDeviceTransmitModeFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceTransmitMode infoDeviceEnumDeviceTransmitMode = InfoDeviceEnumDeviceTransmitMode();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceTransmitMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceTransmitMode.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceTransmitMode.engName = engName;
  }
  final String? isShow = jsonConvert.convert<String>(json['is_show']);
  if (isShow != null) {
    infoDeviceEnumDeviceTransmitMode.isShow = isShow;
  }
  return infoDeviceEnumDeviceTransmitMode;
}

Map<String, dynamic> $InfoDeviceEnumDeviceTransmitModeToJson(InfoDeviceEnumDeviceTransmitMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_show'] = entity.isShow;
  return data;
}

extension InfoDeviceEnumDeviceTransmitModeExtension on InfoDeviceEnumDeviceTransmitMode {
  InfoDeviceEnumDeviceTransmitMode copyWith({
    String? id,
    String? name,
    String? engName,
    String? isShow,
  }) {
    return InfoDeviceEnumDeviceTransmitMode()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isShow = isShow ?? this.isShow;
  }
}

InfoDeviceEnumDeviceLinkageStatus $InfoDeviceEnumDeviceLinkageStatusFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceLinkageStatus infoDeviceEnumDeviceLinkageStatus = InfoDeviceEnumDeviceLinkageStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceLinkageStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoDeviceEnumDeviceLinkageStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoDeviceEnumDeviceLinkageStatus.engStatus = engStatus;
  }
  return infoDeviceEnumDeviceLinkageStatus;
}

Map<String, dynamic> $InfoDeviceEnumDeviceLinkageStatusToJson(InfoDeviceEnumDeviceLinkageStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoDeviceEnumDeviceLinkageStatusExtension on InfoDeviceEnumDeviceLinkageStatus {
  InfoDeviceEnumDeviceLinkageStatus copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return InfoDeviceEnumDeviceLinkageStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoDeviceEnumDeviceBrand $InfoDeviceEnumDeviceBrandFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumDeviceBrand infoDeviceEnumDeviceBrand = InfoDeviceEnumDeviceBrand();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumDeviceBrand.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumDeviceBrand.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumDeviceBrand.engName = engName;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoDeviceEnumDeviceBrand.isUsed = isUsed;
  }
  return infoDeviceEnumDeviceBrand;
}

Map<String, dynamic> $InfoDeviceEnumDeviceBrandToJson(InfoDeviceEnumDeviceBrand entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_used'] = entity.isUsed;
  return data;
}

extension InfoDeviceEnumDeviceBrandExtension on InfoDeviceEnumDeviceBrand {
  InfoDeviceEnumDeviceBrand copyWith({
    String? id,
    String? name,
    String? engName,
    String? isUsed,
  }) {
    return InfoDeviceEnumDeviceBrand()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isUsed = isUsed ?? this.isUsed;
  }
}

InfoDeviceEnumPositionType $InfoDeviceEnumPositionTypeFromJson(Map<String, dynamic> json) {
  final InfoDeviceEnumPositionType infoDeviceEnumPositionType = InfoDeviceEnumPositionType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoDeviceEnumPositionType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceEnumPositionType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceEnumPositionType.engName = engName;
  }
  return infoDeviceEnumPositionType;
}

Map<String, dynamic> $InfoDeviceEnumPositionTypeToJson(InfoDeviceEnumPositionType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoDeviceEnumPositionTypeExtension on InfoDeviceEnumPositionType {
  InfoDeviceEnumPositionType copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoDeviceEnumPositionType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoDeviceCreater $InfoDeviceCreaterFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreater infoDeviceCreater = InfoDeviceCreater();
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    infoDeviceCreater.userId = userId;
  }
  final InfoDeviceCreaterEnumUserType? enumUserType = jsonConvert.convert<InfoDeviceCreaterEnumUserType>(
      json['enum_user_type']);
  if (enumUserType != null) {
    infoDeviceCreater.enumUserType = enumUserType;
  }
  final InfoDeviceCreaterEnumUserRole? enumUserRole = jsonConvert.convert<InfoDeviceCreaterEnumUserRole>(
      json['enum_user_role']);
  if (enumUserRole != null) {
    infoDeviceCreater.enumUserRole = enumUserRole;
  }
  final String? phoneNum = jsonConvert.convert<String>(json['phone_num']);
  if (phoneNum != null) {
    infoDeviceCreater.phoneNum = phoneNum;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    infoDeviceCreater.email = email;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceCreater.name = name;
  }
  final String? nickName = jsonConvert.convert<String>(json['nick_name']);
  if (nickName != null) {
    infoDeviceCreater.nickName = nickName;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    infoDeviceCreater.gender = gender;
  }
  final List<dynamic>? avatar = (json['avatar'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (avatar != null) {
    infoDeviceCreater.avatar = avatar;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    infoDeviceCreater.remarks = remarks;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    infoDeviceCreater.account = account;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(json['last_login_time']);
  if (lastLoginTime != null) {
    infoDeviceCreater.lastLoginTime = lastLoginTime;
  }
  final String? joinedTime = jsonConvert.convert<String>(json['joined_time']);
  if (joinedTime != null) {
    infoDeviceCreater.joinedTime = joinedTime;
  }
  final int? isSuperuser = jsonConvert.convert<int>(json['is_superuser']);
  if (isSuperuser != null) {
    infoDeviceCreater.isSuperuser = isSuperuser;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    infoDeviceCreater.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    infoDeviceCreater.lastName = lastName;
  }
  final String? idCode = jsonConvert.convert<String>(json['id_code']);
  if (idCode != null) {
    infoDeviceCreater.idCode = idCode;
  }
  final InfoDeviceCreaterEnumUserStaff? enumUserStaff = jsonConvert.convert<InfoDeviceCreaterEnumUserStaff>(
      json['enum_user_staff']);
  if (enumUserStaff != null) {
    infoDeviceCreater.enumUserStaff = enumUserStaff;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    infoDeviceCreater.isActive = isActive;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoDeviceCreater.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoDeviceCreater.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    infoDeviceCreater.createrId = createrId;
  }
  final String? politicalStatus = jsonConvert.convert<String>(json['political_status']);
  if (politicalStatus != null) {
    infoDeviceCreater.politicalStatus = politicalStatus;
  }
  final InfoDeviceCreaterEnumUserStatus? enumUserStatus = jsonConvert.convert<InfoDeviceCreaterEnumUserStatus>(
      json['enum_user_status']);
  if (enumUserStatus != null) {
    infoDeviceCreater.enumUserStatus = enumUserStatus;
  }
  final String? timeUserStatus = jsonConvert.convert<String>(json['time_user_status']);
  if (timeUserStatus != null) {
    infoDeviceCreater.timeUserStatus = timeUserStatus;
  }
  final String? nation = jsonConvert.convert<String>(json['nation']);
  if (nation != null) {
    infoDeviceCreater.nation = nation;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    infoDeviceCreater.address = address;
  }
  final String? accountNature = jsonConvert.convert<String>(json['account_nature']);
  if (accountNature != null) {
    infoDeviceCreater.accountNature = accountNature;
  }
  final int? accountSource = jsonConvert.convert<int>(json['account_source']);
  if (accountSource != null) {
    infoDeviceCreater.accountSource = accountSource;
  }
  final int? centerId = jsonConvert.convert<int>(json['center_id']);
  if (centerId != null) {
    infoDeviceCreater.centerId = centerId;
  }
  final int? companyId = jsonConvert.convert<int>(json['company_id']);
  if (companyId != null) {
    infoDeviceCreater.companyId = companyId;
  }
  final String? companyType = jsonConvert.convert<String>(json['company_type']);
  if (companyType != null) {
    infoDeviceCreater.companyType = companyType;
  }
  final int? isResetPwd = jsonConvert.convert<int>(json['is_reset_pwd']);
  if (isResetPwd != null) {
    infoDeviceCreater.isResetPwd = isResetPwd;
  }
  final InfoDeviceCreaterEnumUserAlarmMode? enumUserAlarmMode = jsonConvert.convert<InfoDeviceCreaterEnumUserAlarmMode>(
      json['enum_user_alarm_mode']);
  if (enumUserAlarmMode != null) {
    infoDeviceCreater.enumUserAlarmMode = enumUserAlarmMode;
  }
  final String? timeStartAlarmMode = jsonConvert.convert<String>(json['time_start_alarm_mode']);
  if (timeStartAlarmMode != null) {
    infoDeviceCreater.timeStartAlarmMode = timeStartAlarmMode;
  }
  final List<InfoDeviceCreaterUserPic>? userPic = (json['user_pic'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<InfoDeviceCreaterUserPic>(e) as InfoDeviceCreaterUserPic).toList();
  if (userPic != null) {
    infoDeviceCreater.userPic = userPic;
  }
  final int? registerStatus = jsonConvert.convert<int>(json['register_status']);
  if (registerStatus != null) {
    infoDeviceCreater.registerStatus = registerStatus;
  }
  final int? userValue = jsonConvert.convert<int>(json['user_value']);
  if (userValue != null) {
    infoDeviceCreater.userValue = userValue;
  }
  final int? userIntention = jsonConvert.convert<int>(json['user_intention']);
  if (userIntention != null) {
    infoDeviceCreater.userIntention = userIntention;
  }
  final dynamic expiredTime = json['expired_time'];
  if (expiredTime != null) {
    infoDeviceCreater.expiredTime = expiredTime;
  }
  final int? isDel = jsonConvert.convert<int>(json['is_del']);
  if (isDel != null) {
    infoDeviceCreater.isDel = isDel;
  }
  final int? homeVip = jsonConvert.convert<int>(json['home_vip']);
  if (homeVip != null) {
    infoDeviceCreater.homeVip = homeVip;
  }
  final int? agreeTerm = jsonConvert.convert<int>(json['agree_term']);
  if (agreeTerm != null) {
    infoDeviceCreater.agreeTerm = agreeTerm;
  }
  return infoDeviceCreater;
}

Map<String, dynamic> $InfoDeviceCreaterToJson(InfoDeviceCreater entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user_id'] = entity.userId;
  data['enum_user_type'] = entity.enumUserType?.toJson();
  data['enum_user_role'] = entity.enumUserRole?.toJson();
  data['phone_num'] = entity.phoneNum;
  data['email'] = entity.email;
  data['name'] = entity.name;
  data['nick_name'] = entity.nickName;
  data['gender'] = entity.gender;
  data['avatar'] = entity.avatar;
  data['remarks'] = entity.remarks;
  data['account'] = entity.account;
  data['last_login_time'] = entity.lastLoginTime;
  data['joined_time'] = entity.joinedTime;
  data['is_superuser'] = entity.isSuperuser;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['id_code'] = entity.idCode;
  data['enum_user_staff'] = entity.enumUserStaff?.toJson();
  data['is_active'] = entity.isActive;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['political_status'] = entity.politicalStatus;
  data['enum_user_status'] = entity.enumUserStatus?.toJson();
  data['time_user_status'] = entity.timeUserStatus;
  data['nation'] = entity.nation;
  data['address'] = entity.address;
  data['account_nature'] = entity.accountNature;
  data['account_source'] = entity.accountSource;
  data['center_id'] = entity.centerId;
  data['company_id'] = entity.companyId;
  data['company_type'] = entity.companyType;
  data['is_reset_pwd'] = entity.isResetPwd;
  data['enum_user_alarm_mode'] = entity.enumUserAlarmMode?.toJson();
  data['time_start_alarm_mode'] = entity.timeStartAlarmMode;
  data['user_pic'] = entity.userPic?.map((v) => v.toJson()).toList();
  data['register_status'] = entity.registerStatus;
  data['user_value'] = entity.userValue;
  data['user_intention'] = entity.userIntention;
  data['expired_time'] = entity.expiredTime;
  data['is_del'] = entity.isDel;
  data['home_vip'] = entity.homeVip;
  data['agree_term'] = entity.agreeTerm;
  return data;
}

extension InfoDeviceCreaterExtension on InfoDeviceCreater {
  InfoDeviceCreater copyWith({
    int? userId,
    InfoDeviceCreaterEnumUserType? enumUserType,
    InfoDeviceCreaterEnumUserRole? enumUserRole,
    String? phoneNum,
    String? email,
    String? name,
    String? nickName,
    int? gender,
    List<dynamic>? avatar,
    String? remarks,
    String? account,
    String? lastLoginTime,
    String? joinedTime,
    int? isSuperuser,
    String? firstName,
    String? lastName,
    String? idCode,
    InfoDeviceCreaterEnumUserStaff? enumUserStaff,
    int? isActive,
    String? createTime,
    String? updateTime,
    int? createrId,
    String? politicalStatus,
    InfoDeviceCreaterEnumUserStatus? enumUserStatus,
    String? timeUserStatus,
    String? nation,
    String? address,
    String? accountNature,
    int? accountSource,
    int? centerId,
    int? companyId,
    String? companyType,
    int? isResetPwd,
    InfoDeviceCreaterEnumUserAlarmMode? enumUserAlarmMode,
    String? timeStartAlarmMode,
    List<InfoDeviceCreaterUserPic>? userPic,
    int? registerStatus,
    int? userValue,
    int? userIntention,
    dynamic expiredTime,
    int? isDel,
    int? homeVip,
    int? agreeTerm,
  }) {
    return InfoDeviceCreater()
      ..userId = userId ?? this.userId
      ..enumUserType = enumUserType ?? this.enumUserType
      ..enumUserRole = enumUserRole ?? this.enumUserRole
      ..phoneNum = phoneNum ?? this.phoneNum
      ..email = email ?? this.email
      ..name = name ?? this.name
      ..nickName = nickName ?? this.nickName
      ..gender = gender ?? this.gender
      ..avatar = avatar ?? this.avatar
      ..remarks = remarks ?? this.remarks
      ..account = account ?? this.account
      ..lastLoginTime = lastLoginTime ?? this.lastLoginTime
      ..joinedTime = joinedTime ?? this.joinedTime
      ..isSuperuser = isSuperuser ?? this.isSuperuser
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..idCode = idCode ?? this.idCode
      ..enumUserStaff = enumUserStaff ?? this.enumUserStaff
      ..isActive = isActive ?? this.isActive
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..politicalStatus = politicalStatus ?? this.politicalStatus
      ..enumUserStatus = enumUserStatus ?? this.enumUserStatus
      ..timeUserStatus = timeUserStatus ?? this.timeUserStatus
      ..nation = nation ?? this.nation
      ..address = address ?? this.address
      ..accountNature = accountNature ?? this.accountNature
      ..accountSource = accountSource ?? this.accountSource
      ..centerId = centerId ?? this.centerId
      ..companyId = companyId ?? this.companyId
      ..companyType = companyType ?? this.companyType
      ..isResetPwd = isResetPwd ?? this.isResetPwd
      ..enumUserAlarmMode = enumUserAlarmMode ?? this.enumUserAlarmMode
      ..timeStartAlarmMode = timeStartAlarmMode ?? this.timeStartAlarmMode
      ..userPic = userPic ?? this.userPic
      ..registerStatus = registerStatus ?? this.registerStatus
      ..userValue = userValue ?? this.userValue
      ..userIntention = userIntention ?? this.userIntention
      ..expiredTime = expiredTime ?? this.expiredTime
      ..isDel = isDel ?? this.isDel
      ..homeVip = homeVip ?? this.homeVip
      ..agreeTerm = agreeTerm ?? this.agreeTerm;
  }
}

InfoDeviceCreaterEnumUserType $InfoDeviceCreaterEnumUserTypeFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterEnumUserType infoDeviceCreaterEnumUserType = InfoDeviceCreaterEnumUserType();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoDeviceCreaterEnumUserType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceCreaterEnumUserType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceCreaterEnumUserType.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoDeviceCreaterEnumUserType.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoDeviceCreaterEnumUserType.usedFlag = usedFlag;
  }
  return infoDeviceCreaterEnumUserType;
}

Map<String, dynamic> $InfoDeviceCreaterEnumUserTypeToJson(InfoDeviceCreaterEnumUserType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  return data;
}

extension InfoDeviceCreaterEnumUserTypeExtension on InfoDeviceCreaterEnumUserType {
  InfoDeviceCreaterEnumUserType copyWith({
    int? id,
    String? name,
    String? engName,
    String? companyClass,
    int? usedFlag,
  }) {
    return InfoDeviceCreaterEnumUserType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag;
  }
}

InfoDeviceCreaterEnumUserRole $InfoDeviceCreaterEnumUserRoleFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterEnumUserRole infoDeviceCreaterEnumUserRole = InfoDeviceCreaterEnumUserRole();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoDeviceCreaterEnumUserRole.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceCreaterEnumUserRole.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoDeviceCreaterEnumUserRole.engName = engName;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    infoDeviceCreaterEnumUserRole.enumUserType = enumUserType;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoDeviceCreaterEnumUserRole.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoDeviceCreaterEnumUserRole.usedFlag = usedFlag;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    infoDeviceCreaterEnumUserRole.isAdmin = isAdmin;
  }
  return infoDeviceCreaterEnumUserRole;
}

Map<String, dynamic> $InfoDeviceCreaterEnumUserRoleToJson(InfoDeviceCreaterEnumUserRole entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_user_type'] = entity.enumUserType;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  data['is_admin'] = entity.isAdmin;
  return data;
}

extension InfoDeviceCreaterEnumUserRoleExtension on InfoDeviceCreaterEnumUserRole {
  InfoDeviceCreaterEnumUserRole copyWith({
    int? id,
    String? name,
    String? engName,
    int? enumUserType,
    String? companyClass,
    int? usedFlag,
    int? isAdmin,
  }) {
    return InfoDeviceCreaterEnumUserRole()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumUserType = enumUserType ?? this.enumUserType
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag
      ..isAdmin = isAdmin ?? this.isAdmin;
  }
}

InfoDeviceCreaterEnumUserStaff $InfoDeviceCreaterEnumUserStaffFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterEnumUserStaff infoDeviceCreaterEnumUserStaff = InfoDeviceCreaterEnumUserStaff();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoDeviceCreaterEnumUserStaff.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceCreaterEnumUserStaff.name = name;
  }
  return infoDeviceCreaterEnumUserStaff;
}

Map<String, dynamic> $InfoDeviceCreaterEnumUserStaffToJson(InfoDeviceCreaterEnumUserStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoDeviceCreaterEnumUserStaffExtension on InfoDeviceCreaterEnumUserStaff {
  InfoDeviceCreaterEnumUserStaff copyWith({
    int? id,
    String? name,
  }) {
    return InfoDeviceCreaterEnumUserStaff()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoDeviceCreaterEnumUserStatus $InfoDeviceCreaterEnumUserStatusFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterEnumUserStatus infoDeviceCreaterEnumUserStatus = InfoDeviceCreaterEnumUserStatus();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoDeviceCreaterEnumUserStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoDeviceCreaterEnumUserStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoDeviceCreaterEnumUserStatus.engStatus = engStatus;
  }
  return infoDeviceCreaterEnumUserStatus;
}

Map<String, dynamic> $InfoDeviceCreaterEnumUserStatusToJson(InfoDeviceCreaterEnumUserStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoDeviceCreaterEnumUserStatusExtension on InfoDeviceCreaterEnumUserStatus {
  InfoDeviceCreaterEnumUserStatus copyWith({
    int? id,
    String? status,
    String? engStatus,
  }) {
    return InfoDeviceCreaterEnumUserStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoDeviceCreaterEnumUserAlarmMode $InfoDeviceCreaterEnumUserAlarmModeFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterEnumUserAlarmMode infoDeviceCreaterEnumUserAlarmMode = InfoDeviceCreaterEnumUserAlarmMode();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoDeviceCreaterEnumUserAlarmMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoDeviceCreaterEnumUserAlarmMode.name = name;
  }
  return infoDeviceCreaterEnumUserAlarmMode;
}

Map<String, dynamic> $InfoDeviceCreaterEnumUserAlarmModeToJson(InfoDeviceCreaterEnumUserAlarmMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoDeviceCreaterEnumUserAlarmModeExtension on InfoDeviceCreaterEnumUserAlarmMode {
  InfoDeviceCreaterEnumUserAlarmMode copyWith({
    int? id,
    String? name,
  }) {
    return InfoDeviceCreaterEnumUserAlarmMode()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoDeviceCreaterUserPic $InfoDeviceCreaterUserPicFromJson(Map<String, dynamic> json) {
  final InfoDeviceCreaterUserPic infoDeviceCreaterUserPic = InfoDeviceCreaterUserPic();
  final int? fileId = jsonConvert.convert<int>(json['file_id']);
  if (fileId != null) {
    infoDeviceCreaterUserPic.fileId = fileId;
  }
  final String? absolutePath = jsonConvert.convert<String>(json['absolute_path']);
  if (absolutePath != null) {
    infoDeviceCreaterUserPic.absolutePath = absolutePath;
  }
  return infoDeviceCreaterUserPic;
}

Map<String, dynamic> $InfoDeviceCreaterUserPicToJson(InfoDeviceCreaterUserPic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension InfoDeviceCreaterUserPicExtension on InfoDeviceCreaterUserPic {
  InfoDeviceCreaterUserPic copyWith({
    int? fileId,
    String? absolutePath,
  }) {
    return InfoDeviceCreaterUserPic()
      ..fileId = fileId ?? this.fileId
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}