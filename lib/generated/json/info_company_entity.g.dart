import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_company_entity.dart';

InfoCompanyEntity $InfoCompanyEntityFromJson(Map<String, dynamic> json) {
  final InfoCompanyEntity infoCompanyEntity = InfoCompanyEntity();
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    infoCompanyEntity.companyId = companyId;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    infoCompanyEntity.companyName = companyName;
  }
  final String? companyCode = jsonConvert.convert<String>(json['company_code']);
  if (companyCode != null) {
    infoCompanyEntity.companyCode = companyCode;
  }
  final InfoCompanyEnumCompanyCategory? enumCompanyCategory = jsonConvert.convert<InfoCompanyEnumCompanyCategory>(
      json['enum_company_category']);
  if (enumCompanyCategory != null) {
    infoCompanyEntity.enumCompanyCategory = enumCompanyCategory;
  }
  final InfoCompanyEnumCompanyType? enumCompanyType = jsonConvert.convert<InfoCompanyEnumCompanyType>(
      json['enum_company_type']);
  if (enumCompanyType != null) {
    infoCompanyEntity.enumCompanyType = enumCompanyType;
  }
  final InfoCompanyEnumCompanyOnlineStatus? enumCompanyOnlineStatus = jsonConvert.convert<
      InfoCompanyEnumCompanyOnlineStatus>(json['enum_company_online_status']);
  if (enumCompanyOnlineStatus != null) {
    infoCompanyEntity.enumCompanyOnlineStatus = enumCompanyOnlineStatus;
  }
  final InfoCompanyEnumCompanyEconomic? enumCompanyEconomic = jsonConvert.convert<InfoCompanyEnumCompanyEconomic>(
      json['enum_company_economic']);
  if (enumCompanyEconomic != null) {
    infoCompanyEntity.enumCompanyEconomic = enumCompanyEconomic;
  }
  final InfoCompanyEnumCompanyRegulatorLevel? enumCompanyRegulatorLevel = jsonConvert.convert<
      InfoCompanyEnumCompanyRegulatorLevel>(json['enum_company_regulator_level']);
  if (enumCompanyRegulatorLevel != null) {
    infoCompanyEntity.enumCompanyRegulatorLevel = enumCompanyRegulatorLevel;
  }
  final String? companyRegion = jsonConvert.convert<String>(json['company_region']);
  if (companyRegion != null) {
    infoCompanyEntity.companyRegion = companyRegion;
  }
  final String? companyAddress = jsonConvert.convert<String>(json['company_address']);
  if (companyAddress != null) {
    infoCompanyEntity.companyAddress = companyAddress;
  }
  final String? companyAddressSpecific = jsonConvert.convert<String>(json['company_address_specific']);
  if (companyAddressSpecific != null) {
    infoCompanyEntity.companyAddressSpecific = companyAddressSpecific;
  }
  final String? contactPhone = jsonConvert.convert<String>(json['contact_phone']);
  if (contactPhone != null) {
    infoCompanyEntity.contactPhone = contactPhone;
  }
  final String? postCode = jsonConvert.convert<String>(json['post_code']);
  if (postCode != null) {
    infoCompanyEntity.postCode = postCode;
  }
  final String? staffTotal = jsonConvert.convert<String>(json['staff_total']);
  if (staffTotal != null) {
    infoCompanyEntity.staffTotal = staffTotal;
  }
  final String? setupTime = jsonConvert.convert<String>(json['setup_time']);
  if (setupTime != null) {
    infoCompanyEntity.setupTime = setupTime;
  }
  final String? legalRepresentativeName = jsonConvert.convert<String>(json['legal_representative_name']);
  if (legalRepresentativeName != null) {
    infoCompanyEntity.legalRepresentativeName = legalRepresentativeName;
  }
  final String? legalRepresentativePhone = jsonConvert.convert<String>(json['legal_representative_phone']);
  if (legalRepresentativePhone != null) {
    infoCompanyEntity.legalRepresentativePhone = legalRepresentativePhone;
  }
  final String? legalRepresentativeCode = jsonConvert.convert<String>(json['legal_representative_code']);
  if (legalRepresentativeCode != null) {
    infoCompanyEntity.legalRepresentativeCode = legalRepresentativeCode;
  }
  final String? businessLicenseGraph = jsonConvert.convert<String>(json['business_license_graph']);
  if (businessLicenseGraph != null) {
    infoCompanyEntity.businessLicenseGraph = businessLicenseGraph;
  }
  final String? permanentAssets = jsonConvert.convert<String>(json['permanent_assets']);
  if (permanentAssets != null) {
    infoCompanyEntity.permanentAssets = permanentAssets;
  }
  final String? companyShortName = jsonConvert.convert<String>(json['company_short_name']);
  if (companyShortName != null) {
    infoCompanyEntity.companyShortName = companyShortName;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    infoCompanyEntity.cityName = cityName;
  }
  final String? cityCode = jsonConvert.convert<String>(json['city_code']);
  if (cityCode != null) {
    infoCompanyEntity.cityCode = cityCode;
  }
  final InfoCompanyEnumRegion? enumRegion = jsonConvert.convert<InfoCompanyEnumRegion>(json['enum_region']);
  if (enumRegion != null) {
    infoCompanyEntity.enumRegion = enumRegion;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoCompanyEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoCompanyEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoCompanyEntity.createrId = createrId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    infoCompanyEntity.thingType = thingType;
  }
  final InfoCompanyEnumVerifyState? enumVerifyState = jsonConvert.convert<InfoCompanyEnumVerifyState>(
      json['enum_verify_state']);
  if (enumVerifyState != null) {
    infoCompanyEntity.enumVerifyState = enumVerifyState;
  }
  final String? lastVerifyTime = jsonConvert.convert<String>(json['last_verify_time']);
  if (lastVerifyTime != null) {
    infoCompanyEntity.lastVerifyTime = lastVerifyTime;
  }
  final String? lastEventTime = jsonConvert.convert<String>(json['last_event_time']);
  if (lastEventTime != null) {
    infoCompanyEntity.lastEventTime = lastEventTime;
  }
  final dynamic enumEventFrequence = json['enum_event_frequence'];
  if (enumEventFrequence != null) {
    infoCompanyEntity.enumEventFrequence = enumEventFrequence;
  }
  final InfoCompanyEnumSourceFrom? enumSourceFrom = jsonConvert.convert<InfoCompanyEnumSourceFrom>(
      json['enum_source_from']);
  if (enumSourceFrom != null) {
    infoCompanyEntity.enumSourceFrom = enumSourceFrom;
  }
  final String? isActive = jsonConvert.convert<String>(json['is_active']);
  if (isActive != null) {
    infoCompanyEntity.isActive = isActive;
  }
  final String? isShadow = jsonConvert.convert<String>(json['is_shadow']);
  if (isShadow != null) {
    infoCompanyEntity.isShadow = isShadow;
  }
  final String? loginNum = jsonConvert.convert<String>(json['login_num']);
  if (loginNum != null) {
    infoCompanyEntity.loginNum = loginNum;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    infoCompanyEntity.networkingDate = networkingDate;
  }
  final String? createrThingId = jsonConvert.convert<String>(json['creater_thing_id']);
  if (createrThingId != null) {
    infoCompanyEntity.createrThingId = createrThingId;
  }
  final String? createrThingType = jsonConvert.convert<String>(json['creater_thing_type']);
  if (createrThingType != null) {
    infoCompanyEntity.createrThingType = createrThingType;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoCompanyEntity.isDel = isDel;
  }
  final InfoCompanyEnumCompanyCheckoutStatus? enumCompanyCheckoutStatus = jsonConvert.convert<
      InfoCompanyEnumCompanyCheckoutStatus>(json['enum_company_checkout_status']);
  if (enumCompanyCheckoutStatus != null) {
    infoCompanyEntity.enumCompanyCheckoutStatus = enumCompanyCheckoutStatus;
  }
  final String? isPassAudit = jsonConvert.convert<String>(json['is_pass_audit']);
  if (isPassAudit != null) {
    infoCompanyEntity.isPassAudit = isPassAudit;
  }
  final String? legalRepresentativeCodePic1 = jsonConvert.convert<String>(json['legal_representative_code_pic1']);
  if (legalRepresentativeCodePic1 != null) {
    infoCompanyEntity.legalRepresentativeCodePic1 = legalRepresentativeCodePic1;
  }
  final String? hasCheckoutDevice = jsonConvert.convert<String>(json['has_checkout_device']);
  if (hasCheckoutDevice != null) {
    infoCompanyEntity.hasCheckoutDevice = hasCheckoutDevice;
  }
  final String? legalRepresentativeCodePic2 = jsonConvert.convert<String>(json['legal_representative_code_pic2']);
  if (legalRepresentativeCodePic2 != null) {
    infoCompanyEntity.legalRepresentativeCodePic2 = legalRepresentativeCodePic2;
  }
  final String? isEffective = jsonConvert.convert<String>(json['is_effective']);
  if (isEffective != null) {
    infoCompanyEntity.isEffective = isEffective;
  }
  final String? baseMapId = jsonConvert.convert<String>(json['base_map_id']);
  if (baseMapId != null) {
    infoCompanyEntity.baseMapId = baseMapId;
  }
  final String? limitDeviceCount = jsonConvert.convert<String>(json['limit_device_count']);
  if (limitDeviceCount != null) {
    infoCompanyEntity.limitDeviceCount = limitDeviceCount;
  }
  final String? limitUserCount = jsonConvert.convert<String>(json['limit_user_count']);
  if (limitUserCount != null) {
    infoCompanyEntity.limitUserCount = limitUserCount;
  }
  final String? limitBuildingCount = jsonConvert.convert<String>(json['limit_building_count']);
  if (limitBuildingCount != null) {
    infoCompanyEntity.limitBuildingCount = limitBuildingCount;
  }
  return infoCompanyEntity;
}

Map<String, dynamic> $InfoCompanyEntityToJson(InfoCompanyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['company_id'] = entity.companyId;
  data['company_name'] = entity.companyName;
  data['company_code'] = entity.companyCode;
  data['enum_company_category'] = entity.enumCompanyCategory?.toJson();
  data['enum_company_type'] = entity.enumCompanyType?.toJson();
  data['enum_company_online_status'] = entity.enumCompanyOnlineStatus?.toJson();
  data['enum_company_economic'] = entity.enumCompanyEconomic?.toJson();
  data['enum_company_regulator_level'] = entity.enumCompanyRegulatorLevel?.toJson();
  data['company_region'] = entity.companyRegion;
  data['company_address'] = entity.companyAddress;
  data['company_address_specific'] = entity.companyAddressSpecific;
  data['contact_phone'] = entity.contactPhone;
  data['post_code'] = entity.postCode;
  data['staff_total'] = entity.staffTotal;
  data['setup_time'] = entity.setupTime;
  data['legal_representative_name'] = entity.legalRepresentativeName;
  data['legal_representative_phone'] = entity.legalRepresentativePhone;
  data['legal_representative_code'] = entity.legalRepresentativeCode;
  data['business_license_graph'] = entity.businessLicenseGraph;
  data['permanent_assets'] = entity.permanentAssets;
  data['company_short_name'] = entity.companyShortName;
  data['city_name'] = entity.cityName;
  data['city_code'] = entity.cityCode;
  data['enum_region'] = entity.enumRegion?.toJson();
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['thing_type'] = entity.thingType;
  data['enum_verify_state'] = entity.enumVerifyState?.toJson();
  data['last_verify_time'] = entity.lastVerifyTime;
  data['last_event_time'] = entity.lastEventTime;
  data['enum_event_frequence'] = entity.enumEventFrequence;
  data['enum_source_from'] = entity.enumSourceFrom?.toJson();
  data['is_active'] = entity.isActive;
  data['is_shadow'] = entity.isShadow;
  data['login_num'] = entity.loginNum;
  data['networking_date'] = entity.networkingDate;
  data['creater_thing_id'] = entity.createrThingId;
  data['creater_thing_type'] = entity.createrThingType;
  data['is_del'] = entity.isDel;
  data['enum_company_checkout_status'] = entity.enumCompanyCheckoutStatus?.toJson();
  data['is_pass_audit'] = entity.isPassAudit;
  data['legal_representative_code_pic1'] = entity.legalRepresentativeCodePic1;
  data['has_checkout_device'] = entity.hasCheckoutDevice;
  data['legal_representative_code_pic2'] = entity.legalRepresentativeCodePic2;
  data['is_effective'] = entity.isEffective;
  data['base_map_id'] = entity.baseMapId;
  data['limit_device_count'] = entity.limitDeviceCount;
  data['limit_user_count'] = entity.limitUserCount;
  data['limit_building_count'] = entity.limitBuildingCount;
  return data;
}

extension InfoCompanyEntityExtension on InfoCompanyEntity {
  InfoCompanyEntity copyWith({
    String? companyId,
    String? companyName,
    String? companyCode,
    InfoCompanyEnumCompanyCategory? enumCompanyCategory,
    InfoCompanyEnumCompanyType? enumCompanyType,
    InfoCompanyEnumCompanyOnlineStatus? enumCompanyOnlineStatus,
    InfoCompanyEnumCompanyEconomic? enumCompanyEconomic,
    InfoCompanyEnumCompanyRegulatorLevel? enumCompanyRegulatorLevel,
    String? companyRegion,
    String? companyAddress,
    String? companyAddressSpecific,
    String? contactPhone,
    String? postCode,
    String? staffTotal,
    String? setupTime,
    String? legalRepresentativeName,
    String? legalRepresentativePhone,
    String? legalRepresentativeCode,
    String? businessLicenseGraph,
    String? permanentAssets,
    String? companyShortName,
    String? cityName,
    String? cityCode,
    InfoCompanyEnumRegion? enumRegion,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? thingType,
    InfoCompanyEnumVerifyState? enumVerifyState,
    String? lastVerifyTime,
    String? lastEventTime,
    dynamic enumEventFrequence,
    InfoCompanyEnumSourceFrom? enumSourceFrom,
    String? isActive,
    String? isShadow,
    String? loginNum,
    String? networkingDate,
    String? createrThingId,
    String? createrThingType,
    String? isDel,
    InfoCompanyEnumCompanyCheckoutStatus? enumCompanyCheckoutStatus,
    String? isPassAudit,
    String? legalRepresentativeCodePic1,
    String? hasCheckoutDevice,
    String? legalRepresentativeCodePic2,
    String? isEffective,
    String? baseMapId,
    String? limitDeviceCount,
    String? limitUserCount,
    String? limitBuildingCount,
  }) {
    return InfoCompanyEntity()
      ..companyId = companyId ?? this.companyId
      ..companyName = companyName ?? this.companyName
      ..companyCode = companyCode ?? this.companyCode
      ..enumCompanyCategory = enumCompanyCategory ?? this.enumCompanyCategory
      ..enumCompanyType = enumCompanyType ?? this.enumCompanyType
      ..enumCompanyOnlineStatus = enumCompanyOnlineStatus ?? this.enumCompanyOnlineStatus
      ..enumCompanyEconomic = enumCompanyEconomic ?? this.enumCompanyEconomic
      ..enumCompanyRegulatorLevel = enumCompanyRegulatorLevel ?? this.enumCompanyRegulatorLevel
      ..companyRegion = companyRegion ?? this.companyRegion
      ..companyAddress = companyAddress ?? this.companyAddress
      ..companyAddressSpecific = companyAddressSpecific ?? this.companyAddressSpecific
      ..contactPhone = contactPhone ?? this.contactPhone
      ..postCode = postCode ?? this.postCode
      ..staffTotal = staffTotal ?? this.staffTotal
      ..setupTime = setupTime ?? this.setupTime
      ..legalRepresentativeName = legalRepresentativeName ?? this.legalRepresentativeName
      ..legalRepresentativePhone = legalRepresentativePhone ?? this.legalRepresentativePhone
      ..legalRepresentativeCode = legalRepresentativeCode ?? this.legalRepresentativeCode
      ..businessLicenseGraph = businessLicenseGraph ?? this.businessLicenseGraph
      ..permanentAssets = permanentAssets ?? this.permanentAssets
      ..companyShortName = companyShortName ?? this.companyShortName
      ..cityName = cityName ?? this.cityName
      ..cityCode = cityCode ?? this.cityCode
      ..enumRegion = enumRegion ?? this.enumRegion
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..thingType = thingType ?? this.thingType
      ..enumVerifyState = enumVerifyState ?? this.enumVerifyState
      ..lastVerifyTime = lastVerifyTime ?? this.lastVerifyTime
      ..lastEventTime = lastEventTime ?? this.lastEventTime
      ..enumEventFrequence = enumEventFrequence ?? this.enumEventFrequence
      ..enumSourceFrom = enumSourceFrom ?? this.enumSourceFrom
      ..isActive = isActive ?? this.isActive
      ..isShadow = isShadow ?? this.isShadow
      ..loginNum = loginNum ?? this.loginNum
      ..networkingDate = networkingDate ?? this.networkingDate
      ..createrThingId = createrThingId ?? this.createrThingId
      ..createrThingType = createrThingType ?? this.createrThingType
      ..isDel = isDel ?? this.isDel
      ..enumCompanyCheckoutStatus = enumCompanyCheckoutStatus ?? this.enumCompanyCheckoutStatus
      ..isPassAudit = isPassAudit ?? this.isPassAudit
      ..legalRepresentativeCodePic1 = legalRepresentativeCodePic1 ?? this.legalRepresentativeCodePic1
      ..hasCheckoutDevice = hasCheckoutDevice ?? this.hasCheckoutDevice
      ..legalRepresentativeCodePic2 = legalRepresentativeCodePic2 ?? this.legalRepresentativeCodePic2
      ..isEffective = isEffective ?? this.isEffective
      ..baseMapId = baseMapId ?? this.baseMapId
      ..limitDeviceCount = limitDeviceCount ?? this.limitDeviceCount
      ..limitUserCount = limitUserCount ?? this.limitUserCount
      ..limitBuildingCount = limitBuildingCount ?? this.limitBuildingCount;
  }
}

InfoCompanyEnumCompanyCategory $InfoCompanyEnumCompanyCategoryFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyCategory infoCompanyEnumCompanyCategory = InfoCompanyEnumCompanyCategory();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyCategory.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumCompanyCategory.name = name;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    infoCompanyEnumCompanyCategory.isUsed = isUsed;
  }
  return infoCompanyEnumCompanyCategory;
}

Map<String, dynamic> $InfoCompanyEnumCompanyCategoryToJson(InfoCompanyEnumCompanyCategory entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['is_used'] = entity.isUsed;
  return data;
}

extension InfoCompanyEnumCompanyCategoryExtension on InfoCompanyEnumCompanyCategory {
  InfoCompanyEnumCompanyCategory copyWith({
    String? id,
    String? name,
    String? isUsed,
  }) {
    return InfoCompanyEnumCompanyCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..isUsed = isUsed ?? this.isUsed;
  }
}

InfoCompanyEnumCompanyType $InfoCompanyEnumCompanyTypeFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyType infoCompanyEnumCompanyType = InfoCompanyEnumCompanyType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumCompanyType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoCompanyEnumCompanyType.engName = engName;
  }
  final String? isShow = jsonConvert.convert<String>(json['is_show']);
  if (isShow != null) {
    infoCompanyEnumCompanyType.isShow = isShow;
  }
  return infoCompanyEnumCompanyType;
}

Map<String, dynamic> $InfoCompanyEnumCompanyTypeToJson(InfoCompanyEnumCompanyType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_show'] = entity.isShow;
  return data;
}

extension InfoCompanyEnumCompanyTypeExtension on InfoCompanyEnumCompanyType {
  InfoCompanyEnumCompanyType copyWith({
    String? id,
    String? name,
    String? engName,
    String? isShow,
  }) {
    return InfoCompanyEnumCompanyType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isShow = isShow ?? this.isShow;
  }
}

InfoCompanyEnumCompanyOnlineStatus $InfoCompanyEnumCompanyOnlineStatusFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyOnlineStatus infoCompanyEnumCompanyOnlineStatus = InfoCompanyEnumCompanyOnlineStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyOnlineStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoCompanyEnumCompanyOnlineStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoCompanyEnumCompanyOnlineStatus.engStatus = engStatus;
  }
  return infoCompanyEnumCompanyOnlineStatus;
}

Map<String, dynamic> $InfoCompanyEnumCompanyOnlineStatusToJson(InfoCompanyEnumCompanyOnlineStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoCompanyEnumCompanyOnlineStatusExtension on InfoCompanyEnumCompanyOnlineStatus {
  InfoCompanyEnumCompanyOnlineStatus copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return InfoCompanyEnumCompanyOnlineStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoCompanyEnumCompanyEconomic $InfoCompanyEnumCompanyEconomicFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyEconomic infoCompanyEnumCompanyEconomic = InfoCompanyEnumCompanyEconomic();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyEconomic.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumCompanyEconomic.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoCompanyEnumCompanyEconomic.engName = engName;
  }
  return infoCompanyEnumCompanyEconomic;
}

Map<String, dynamic> $InfoCompanyEnumCompanyEconomicToJson(InfoCompanyEnumCompanyEconomic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoCompanyEnumCompanyEconomicExtension on InfoCompanyEnumCompanyEconomic {
  InfoCompanyEnumCompanyEconomic copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoCompanyEnumCompanyEconomic()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoCompanyEnumCompanyRegulatorLevel $InfoCompanyEnumCompanyRegulatorLevelFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyRegulatorLevel infoCompanyEnumCompanyRegulatorLevel = InfoCompanyEnumCompanyRegulatorLevel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyRegulatorLevel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumCompanyRegulatorLevel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoCompanyEnumCompanyRegulatorLevel.engName = engName;
  }
  final String? tag = jsonConvert.convert<String>(json['tag']);
  if (tag != null) {
    infoCompanyEnumCompanyRegulatorLevel.tag = tag;
  }
  return infoCompanyEnumCompanyRegulatorLevel;
}

Map<String, dynamic> $InfoCompanyEnumCompanyRegulatorLevelToJson(InfoCompanyEnumCompanyRegulatorLevel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['tag'] = entity.tag;
  return data;
}

extension InfoCompanyEnumCompanyRegulatorLevelExtension on InfoCompanyEnumCompanyRegulatorLevel {
  InfoCompanyEnumCompanyRegulatorLevel copyWith({
    String? id,
    String? name,
    String? engName,
    String? tag,
  }) {
    return InfoCompanyEnumCompanyRegulatorLevel()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..tag = tag ?? this.tag;
  }
}

InfoCompanyEnumRegion $InfoCompanyEnumRegionFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumRegion infoCompanyEnumRegion = InfoCompanyEnumRegion();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumRegion.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumRegion.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoCompanyEnumRegion.engName = engName;
  }
  final String? romanAlpha = jsonConvert.convert<String>(json['roman_alpha']);
  if (romanAlpha != null) {
    infoCompanyEnumRegion.romanAlpha = romanAlpha;
  }
  final String? cityCode = jsonConvert.convert<String>(json['city_code']);
  if (cityCode != null) {
    infoCompanyEnumRegion.cityCode = cityCode;
  }
  final String? alphaCode = jsonConvert.convert<String>(json['alpha_code']);
  if (alphaCode != null) {
    infoCompanyEnumRegion.alphaCode = alphaCode;
  }
  final String? superiorCode = jsonConvert.convert<String>(json['superior_code']);
  if (superiorCode != null) {
    infoCompanyEnumRegion.superiorCode = superiorCode;
  }
  final String? level = jsonConvert.convert<String>(json['level']);
  if (level != null) {
    infoCompanyEnumRegion.level = level;
  }
  return infoCompanyEnumRegion;
}

Map<String, dynamic> $InfoCompanyEnumRegionToJson(InfoCompanyEnumRegion entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['roman_alpha'] = entity.romanAlpha;
  data['city_code'] = entity.cityCode;
  data['alpha_code'] = entity.alphaCode;
  data['superior_code'] = entity.superiorCode;
  data['level'] = entity.level;
  return data;
}

extension InfoCompanyEnumRegionExtension on InfoCompanyEnumRegion {
  InfoCompanyEnumRegion copyWith({
    String? id,
    String? name,
    String? engName,
    String? romanAlpha,
    String? cityCode,
    String? alphaCode,
    String? superiorCode,
    String? level,
  }) {
    return InfoCompanyEnumRegion()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..romanAlpha = romanAlpha ?? this.romanAlpha
      ..cityCode = cityCode ?? this.cityCode
      ..alphaCode = alphaCode ?? this.alphaCode
      ..superiorCode = superiorCode ?? this.superiorCode
      ..level = level ?? this.level;
  }
}

InfoCompanyEnumVerifyState $InfoCompanyEnumVerifyStateFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumVerifyState infoCompanyEnumVerifyState = InfoCompanyEnumVerifyState();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumVerifyState.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumVerifyState.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoCompanyEnumVerifyState.engName = engName;
  }
  return infoCompanyEnumVerifyState;
}

Map<String, dynamic> $InfoCompanyEnumVerifyStateToJson(InfoCompanyEnumVerifyState entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoCompanyEnumVerifyStateExtension on InfoCompanyEnumVerifyState {
  InfoCompanyEnumVerifyState copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoCompanyEnumVerifyState()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoCompanyEnumSourceFrom $InfoCompanyEnumSourceFromFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumSourceFrom infoCompanyEnumSourceFrom = InfoCompanyEnumSourceFrom();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumSourceFrom.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumSourceFrom.name = name;
  }
  return infoCompanyEnumSourceFrom;
}

Map<String, dynamic> $InfoCompanyEnumSourceFromToJson(InfoCompanyEnumSourceFrom entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoCompanyEnumSourceFromExtension on InfoCompanyEnumSourceFrom {
  InfoCompanyEnumSourceFrom copyWith({
    String? id,
    String? name,
  }) {
    return InfoCompanyEnumSourceFrom()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoCompanyEnumCompanyCheckoutStatus $InfoCompanyEnumCompanyCheckoutStatusFromJson(Map<String, dynamic> json) {
  final InfoCompanyEnumCompanyCheckoutStatus infoCompanyEnumCompanyCheckoutStatus = InfoCompanyEnumCompanyCheckoutStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoCompanyEnumCompanyCheckoutStatus.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoCompanyEnumCompanyCheckoutStatus.name = name;
  }
  return infoCompanyEnumCompanyCheckoutStatus;
}

Map<String, dynamic> $InfoCompanyEnumCompanyCheckoutStatusToJson(InfoCompanyEnumCompanyCheckoutStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoCompanyEnumCompanyCheckoutStatusExtension on InfoCompanyEnumCompanyCheckoutStatus {
  InfoCompanyEnumCompanyCheckoutStatus copyWith({
    String? id,
    String? name,
  }) {
    return InfoCompanyEnumCompanyCheckoutStatus()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}