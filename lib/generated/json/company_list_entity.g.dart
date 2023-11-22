import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/company/company_list_entity.dart';

CompanyListEntity $CompanyListEntityFromJson(Map<String, dynamic> json) {
  final CompanyListEntity companyListEntity = CompanyListEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    companyListEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    companyListEntity.msg = msg;
  }
  final String? engMsg = jsonConvert.convert<String>(json['eng_msg']);
  if (engMsg != null) {
    companyListEntity.engMsg = engMsg;
  }
  final CompanyListData? data = jsonConvert.convert<CompanyListData>(json['data']);
  if (data != null) {
    companyListEntity.data = data;
  }
  return companyListEntity;
}

Map<String, dynamic> $CompanyListEntityToJson(CompanyListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['eng_msg'] = entity.engMsg;
  data['data'] = entity.data.toJson();
  return data;
}

extension CompanyListEntityExtension on CompanyListEntity {
  CompanyListEntity copyWith({
    int? code,
    String? msg,
    String? engMsg,
    CompanyListData? data,
  }) {
    return CompanyListEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..engMsg = engMsg ?? this.engMsg
      ..data = data ?? this.data;
  }
}

CompanyListData $CompanyListDataFromJson(Map<String, dynamic> json) {
  final CompanyListData companyListData = CompanyListData();
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    companyListData.total = total;
  }
  final List<CompanyListDataList>? list = (json['list'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<CompanyListDataList>(e) as CompanyListDataList).toList();
  if (list != null) {
    companyListData.list = list;
  }
  return companyListData;
}

Map<String, dynamic> $CompanyListDataToJson(CompanyListData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['total'] = entity.total;
  data['list'] = entity.list.map((v) => v.toJson()).toList();
  return data;
}

extension CompanyListDataExtension on CompanyListData {
  CompanyListData copyWith({
    int? total,
    List<CompanyListDataList>? list,
  }) {
    return CompanyListData()
      ..total = total ?? this.total
      ..list = list ?? this.list;
  }
}

CompanyListDataList $CompanyListDataListFromJson(Map<String, dynamic> json) {
  final CompanyListDataList companyListDataList = CompanyListDataList();
  final CompanyListDataListInfoCompany? infoCompany = jsonConvert.convert<CompanyListDataListInfoCompany>(
      json['info_company']);
  if (infoCompany != null) {
    companyListDataList.infoCompany = infoCompany;
  }
  final List<dynamic>? systemType = (json['system_type'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (systemType != null) {
    companyListDataList.systemType = systemType;
  }
  return companyListDataList;
}

Map<String, dynamic> $CompanyListDataListToJson(CompanyListDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['info_company'] = entity.infoCompany.toJson();
  data['system_type'] = entity.systemType;
  return data;
}

extension CompanyListDataListExtension on CompanyListDataList {
  CompanyListDataList copyWith({
    CompanyListDataListInfoCompany? infoCompany,
    List<dynamic>? systemType,
  }) {
    return CompanyListDataList()
      ..infoCompany = infoCompany ?? this.infoCompany
      ..systemType = systemType ?? this.systemType;
  }
}

CompanyListDataListInfoCompany $CompanyListDataListInfoCompanyFromJson(Map<String, dynamic> json) {
  final CompanyListDataListInfoCompany companyListDataListInfoCompany = CompanyListDataListInfoCompany();
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    companyListDataListInfoCompany.companyId = companyId;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    companyListDataListInfoCompany.companyName = companyName;
  }
  final String? companyCode = jsonConvert.convert<String>(json['company_code']);
  if (companyCode != null) {
    companyListDataListInfoCompany.companyCode = companyCode;
  }
  final CompanyListDataListInfoCompanyEnumCompanyCategory? enumCompanyCategory = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyCategory>(json['enum_company_category']);
  if (enumCompanyCategory != null) {
    companyListDataListInfoCompany.enumCompanyCategory = enumCompanyCategory;
  }
  final CompanyListDataListInfoCompanyEnumCompanyType? enumCompanyType = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyType>(json['enum_company_type']);
  if (enumCompanyType != null) {
    companyListDataListInfoCompany.enumCompanyType = enumCompanyType;
  }
  final CompanyListDataListInfoCompanyEnumCompanyOnlineStatus? enumCompanyOnlineStatus = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyOnlineStatus>(json['enum_company_online_status']);
  if (enumCompanyOnlineStatus != null) {
    companyListDataListInfoCompany.enumCompanyOnlineStatus = enumCompanyOnlineStatus;
  }
  final CompanyListDataListInfoCompanyEnumCompanyEconomic? enumCompanyEconomic = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyEconomic>(json['enum_company_economic']);
  if (enumCompanyEconomic != null) {
    companyListDataListInfoCompany.enumCompanyEconomic = enumCompanyEconomic;
  }
  final CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel? enumCompanyRegulatorLevel = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel>(json['enum_company_regulator_level']);
  if (enumCompanyRegulatorLevel != null) {
    companyListDataListInfoCompany.enumCompanyRegulatorLevel = enumCompanyRegulatorLevel;
  }
  final String? companyRegion = jsonConvert.convert<String>(json['company_region']);
  if (companyRegion != null) {
    companyListDataListInfoCompany.companyRegion = companyRegion;
  }
  final String? companyAddress = jsonConvert.convert<String>(json['company_address']);
  if (companyAddress != null) {
    companyListDataListInfoCompany.companyAddress = companyAddress;
  }
  final String? companyAddressSpecific = jsonConvert.convert<String>(json['company_address_specific']);
  if (companyAddressSpecific != null) {
    companyListDataListInfoCompany.companyAddressSpecific = companyAddressSpecific;
  }
  final String? contactPhone = jsonConvert.convert<String>(json['contact_phone']);
  if (contactPhone != null) {
    companyListDataListInfoCompany.contactPhone = contactPhone;
  }
  final String? postCode = jsonConvert.convert<String>(json['post_code']);
  if (postCode != null) {
    companyListDataListInfoCompany.postCode = postCode;
  }
  final String? staffTotal = jsonConvert.convert<String>(json['staff_total']);
  if (staffTotal != null) {
    companyListDataListInfoCompany.staffTotal = staffTotal;
  }
  final String? setupTime = jsonConvert.convert<String>(json['setup_time']);
  if (setupTime != null) {
    companyListDataListInfoCompany.setupTime = setupTime;
  }
  final String? legalRepresentativeName = jsonConvert.convert<String>(json['legal_representative_name']);
  if (legalRepresentativeName != null) {
    companyListDataListInfoCompany.legalRepresentativeName = legalRepresentativeName;
  }
  final String? legalRepresentativePhone = jsonConvert.convert<String>(json['legal_representative_phone']);
  if (legalRepresentativePhone != null) {
    companyListDataListInfoCompany.legalRepresentativePhone = legalRepresentativePhone;
  }
  final String? legalRepresentativeCode = jsonConvert.convert<String>(json['legal_representative_code']);
  if (legalRepresentativeCode != null) {
    companyListDataListInfoCompany.legalRepresentativeCode = legalRepresentativeCode;
  }
  final String? businessLicenseGraph = jsonConvert.convert<String>(json['business_license_graph']);
  if (businessLicenseGraph != null) {
    companyListDataListInfoCompany.businessLicenseGraph = businessLicenseGraph;
  }
  final String? permanentAssets = jsonConvert.convert<String>(json['permanent_assets']);
  if (permanentAssets != null) {
    companyListDataListInfoCompany.permanentAssets = permanentAssets;
  }
  final String? companyShortName = jsonConvert.convert<String>(json['company_short_name']);
  if (companyShortName != null) {
    companyListDataListInfoCompany.companyShortName = companyShortName;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    companyListDataListInfoCompany.cityName = cityName;
  }
  final String? cityCode = jsonConvert.convert<String>(json['city_code']);
  if (cityCode != null) {
    companyListDataListInfoCompany.cityCode = cityCode;
  }
  final CompanyListDataListInfoCompanyEnumRegion? enumRegion = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumRegion>(json['enum_region']);
  if (enumRegion != null) {
    companyListDataListInfoCompany.enumRegion = enumRegion;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    companyListDataListInfoCompany.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    companyListDataListInfoCompany.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    companyListDataListInfoCompany.createrId = createrId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    companyListDataListInfoCompany.thingType = thingType;
  }
  final CompanyListDataListInfoCompanyEnumVerifyState? enumVerifyState = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumVerifyState>(json['enum_verify_state']);
  if (enumVerifyState != null) {
    companyListDataListInfoCompany.enumVerifyState = enumVerifyState;
  }
  final String? lastVerifyTime = jsonConvert.convert<String>(json['last_verify_time']);
  if (lastVerifyTime != null) {
    companyListDataListInfoCompany.lastVerifyTime = lastVerifyTime;
  }
  final String? lastEventTime = jsonConvert.convert<String>(json['last_event_time']);
  if (lastEventTime != null) {
    companyListDataListInfoCompany.lastEventTime = lastEventTime;
  }
  final dynamic enumEventFrequence = json['enum_event_frequence'];
  if (enumEventFrequence != null) {
    companyListDataListInfoCompany.enumEventFrequence = enumEventFrequence;
  }
  final CompanyListDataListInfoCompanyEnumSourceFrom? enumSourceFrom = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumSourceFrom>(json['enum_source_from']);
  if (enumSourceFrom != null) {
    companyListDataListInfoCompany.enumSourceFrom = enumSourceFrom;
  }
  final String? isActive = jsonConvert.convert<String>(json['is_active']);
  if (isActive != null) {
    companyListDataListInfoCompany.isActive = isActive;
  }
  final String? isShadow = jsonConvert.convert<String>(json['is_shadow']);
  if (isShadow != null) {
    companyListDataListInfoCompany.isShadow = isShadow;
  }
  final String? loginNum = jsonConvert.convert<String>(json['login_num']);
  if (loginNum != null) {
    companyListDataListInfoCompany.loginNum = loginNum;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    companyListDataListInfoCompany.networkingDate = networkingDate;
  }
  final String? createrThingId = jsonConvert.convert<String>(json['creater_thing_id']);
  if (createrThingId != null) {
    companyListDataListInfoCompany.createrThingId = createrThingId;
  }
  final String? createrThingType = jsonConvert.convert<String>(json['creater_thing_type']);
  if (createrThingType != null) {
    companyListDataListInfoCompany.createrThingType = createrThingType;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    companyListDataListInfoCompany.isDel = isDel;
  }
  final CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus? enumCompanyCheckoutStatus = jsonConvert.convert<
      CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus>(json['enum_company_checkout_status']);
  if (enumCompanyCheckoutStatus != null) {
    companyListDataListInfoCompany.enumCompanyCheckoutStatus = enumCompanyCheckoutStatus;
  }
  final String? isPassAudit = jsonConvert.convert<String>(json['is_pass_audit']);
  if (isPassAudit != null) {
    companyListDataListInfoCompany.isPassAudit = isPassAudit;
  }
  final String? legalRepresentativeCodePic1 = jsonConvert.convert<String>(json['legal_representative_code_pic1']);
  if (legalRepresentativeCodePic1 != null) {
    companyListDataListInfoCompany.legalRepresentativeCodePic1 = legalRepresentativeCodePic1;
  }
  final String? hasCheckoutDevice = jsonConvert.convert<String>(json['has_checkout_device']);
  if (hasCheckoutDevice != null) {
    companyListDataListInfoCompany.hasCheckoutDevice = hasCheckoutDevice;
  }
  final String? legalRepresentativeCodePic2 = jsonConvert.convert<String>(json['legal_representative_code_pic2']);
  if (legalRepresentativeCodePic2 != null) {
    companyListDataListInfoCompany.legalRepresentativeCodePic2 = legalRepresentativeCodePic2;
  }
  final String? isEffective = jsonConvert.convert<String>(json['is_effective']);
  if (isEffective != null) {
    companyListDataListInfoCompany.isEffective = isEffective;
  }
  final String? baseMapId = jsonConvert.convert<String>(json['base_map_id']);
  if (baseMapId != null) {
    companyListDataListInfoCompany.baseMapId = baseMapId;
  }
  final String? limitDeviceCount = jsonConvert.convert<String>(json['limit_device_count']);
  if (limitDeviceCount != null) {
    companyListDataListInfoCompany.limitDeviceCount = limitDeviceCount;
  }
  final String? limitUserCount = jsonConvert.convert<String>(json['limit_user_count']);
  if (limitUserCount != null) {
    companyListDataListInfoCompany.limitUserCount = limitUserCount;
  }
  final String? limitBuildingCount = jsonConvert.convert<String>(json['limit_building_count']);
  if (limitBuildingCount != null) {
    companyListDataListInfoCompany.limitBuildingCount = limitBuildingCount;
  }
  final String? isBind = jsonConvert.convert<String>(json['is_bind']);
  if (isBind != null) {
    companyListDataListInfoCompany.isBind = isBind;
  }
  final String? score = jsonConvert.convert<String>(json['score']);
  if (score != null) {
    companyListDataListInfoCompany.score = score;
  }
  return companyListDataListInfoCompany;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyToJson(CompanyListDataListInfoCompany entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['company_id'] = entity.companyId;
  data['company_name'] = entity.companyName;
  data['company_code'] = entity.companyCode;
  data['enum_company_category'] = entity.enumCompanyCategory.toJson();
  data['enum_company_type'] = entity.enumCompanyType.toJson();
  data['enum_company_online_status'] = entity.enumCompanyOnlineStatus.toJson();
  data['enum_company_economic'] = entity.enumCompanyEconomic.toJson();
  data['enum_company_regulator_level'] = entity.enumCompanyRegulatorLevel.toJson();
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
  data['enum_region'] = entity.enumRegion.toJson();
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['thing_type'] = entity.thingType;
  data['enum_verify_state'] = entity.enumVerifyState.toJson();
  data['last_verify_time'] = entity.lastVerifyTime;
  data['last_event_time'] = entity.lastEventTime;
  data['enum_event_frequence'] = entity.enumEventFrequence;
  data['enum_source_from'] = entity.enumSourceFrom.toJson();
  data['is_active'] = entity.isActive;
  data['is_shadow'] = entity.isShadow;
  data['login_num'] = entity.loginNum;
  data['networking_date'] = entity.networkingDate;
  data['creater_thing_id'] = entity.createrThingId;
  data['creater_thing_type'] = entity.createrThingType;
  data['is_del'] = entity.isDel;
  data['enum_company_checkout_status'] = entity.enumCompanyCheckoutStatus.toJson();
  data['is_pass_audit'] = entity.isPassAudit;
  data['legal_representative_code_pic1'] = entity.legalRepresentativeCodePic1;
  data['has_checkout_device'] = entity.hasCheckoutDevice;
  data['legal_representative_code_pic2'] = entity.legalRepresentativeCodePic2;
  data['is_effective'] = entity.isEffective;
  data['base_map_id'] = entity.baseMapId;
  data['limit_device_count'] = entity.limitDeviceCount;
  data['limit_user_count'] = entity.limitUserCount;
  data['limit_building_count'] = entity.limitBuildingCount;
  data['is_bind'] = entity.isBind;
  data['score'] = entity.score;
  return data;
}

extension CompanyListDataListInfoCompanyExtension on CompanyListDataListInfoCompany {
  CompanyListDataListInfoCompany copyWith({
    String? companyId,
    String? companyName,
    String? companyCode,
    CompanyListDataListInfoCompanyEnumCompanyCategory? enumCompanyCategory,
    CompanyListDataListInfoCompanyEnumCompanyType? enumCompanyType,
    CompanyListDataListInfoCompanyEnumCompanyOnlineStatus? enumCompanyOnlineStatus,
    CompanyListDataListInfoCompanyEnumCompanyEconomic? enumCompanyEconomic,
    CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel? enumCompanyRegulatorLevel,
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
    CompanyListDataListInfoCompanyEnumRegion? enumRegion,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? thingType,
    CompanyListDataListInfoCompanyEnumVerifyState? enumVerifyState,
    String? lastVerifyTime,
    String? lastEventTime,
    dynamic enumEventFrequence,
    CompanyListDataListInfoCompanyEnumSourceFrom? enumSourceFrom,
    String? isActive,
    String? isShadow,
    String? loginNum,
    String? networkingDate,
    String? createrThingId,
    String? createrThingType,
    String? isDel,
    CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus? enumCompanyCheckoutStatus,
    String? isPassAudit,
    String? legalRepresentativeCodePic1,
    String? hasCheckoutDevice,
    String? legalRepresentativeCodePic2,
    String? isEffective,
    String? baseMapId,
    String? limitDeviceCount,
    String? limitUserCount,
    String? limitBuildingCount,
    String? isBind,
    String? score,
  }) {
    return CompanyListDataListInfoCompany()
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
      ..limitBuildingCount = limitBuildingCount ?? this.limitBuildingCount
      ..isBind = isBind ?? this.isBind
      ..score = score ?? this.score;
  }
}

CompanyListDataListInfoCompanyEnumCompanyCategory $CompanyListDataListInfoCompanyEnumCompanyCategoryFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyCategory companyListDataListInfoCompanyEnumCompanyCategory = CompanyListDataListInfoCompanyEnumCompanyCategory();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyCategory.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumCompanyCategory.name = name;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    companyListDataListInfoCompanyEnumCompanyCategory.isUsed = isUsed;
  }
  return companyListDataListInfoCompanyEnumCompanyCategory;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyCategoryToJson(
    CompanyListDataListInfoCompanyEnumCompanyCategory entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['is_used'] = entity.isUsed;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyCategoryExtension on CompanyListDataListInfoCompanyEnumCompanyCategory {
  CompanyListDataListInfoCompanyEnumCompanyCategory copyWith({
    String? id,
    String? name,
    String? isUsed,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..isUsed = isUsed ?? this.isUsed;
  }
}

CompanyListDataListInfoCompanyEnumCompanyType $CompanyListDataListInfoCompanyEnumCompanyTypeFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyType companyListDataListInfoCompanyEnumCompanyType = CompanyListDataListInfoCompanyEnumCompanyType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumCompanyType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    companyListDataListInfoCompanyEnumCompanyType.engName = engName;
  }
  final String? isShow = jsonConvert.convert<String>(json['is_show']);
  if (isShow != null) {
    companyListDataListInfoCompanyEnumCompanyType.isShow = isShow;
  }
  return companyListDataListInfoCompanyEnumCompanyType;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyTypeToJson(
    CompanyListDataListInfoCompanyEnumCompanyType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_show'] = entity.isShow;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyTypeExtension on CompanyListDataListInfoCompanyEnumCompanyType {
  CompanyListDataListInfoCompanyEnumCompanyType copyWith({
    String? id,
    String? name,
    String? engName,
    String? isShow,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isShow = isShow ?? this.isShow;
  }
}

CompanyListDataListInfoCompanyEnumCompanyOnlineStatus $CompanyListDataListInfoCompanyEnumCompanyOnlineStatusFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyOnlineStatus companyListDataListInfoCompanyEnumCompanyOnlineStatus = CompanyListDataListInfoCompanyEnumCompanyOnlineStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyOnlineStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    companyListDataListInfoCompanyEnumCompanyOnlineStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    companyListDataListInfoCompanyEnumCompanyOnlineStatus.engStatus = engStatus;
  }
  return companyListDataListInfoCompanyEnumCompanyOnlineStatus;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyOnlineStatusToJson(
    CompanyListDataListInfoCompanyEnumCompanyOnlineStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyOnlineStatusExtension on CompanyListDataListInfoCompanyEnumCompanyOnlineStatus {
  CompanyListDataListInfoCompanyEnumCompanyOnlineStatus copyWith({
    String? id,
    String? status,
    String? engStatus,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyOnlineStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

CompanyListDataListInfoCompanyEnumCompanyEconomic $CompanyListDataListInfoCompanyEnumCompanyEconomicFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyEconomic companyListDataListInfoCompanyEnumCompanyEconomic = CompanyListDataListInfoCompanyEnumCompanyEconomic();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyEconomic.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumCompanyEconomic.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    companyListDataListInfoCompanyEnumCompanyEconomic.engName = engName;
  }
  return companyListDataListInfoCompanyEnumCompanyEconomic;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyEconomicToJson(
    CompanyListDataListInfoCompanyEnumCompanyEconomic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyEconomicExtension on CompanyListDataListInfoCompanyEnumCompanyEconomic {
  CompanyListDataListInfoCompanyEnumCompanyEconomic copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyEconomic()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel $CompanyListDataListInfoCompanyEnumCompanyRegulatorLevelFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel companyListDataListInfoCompanyEnumCompanyRegulatorLevel = CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyRegulatorLevel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumCompanyRegulatorLevel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    companyListDataListInfoCompanyEnumCompanyRegulatorLevel.engName = engName;
  }
  final String? tag = jsonConvert.convert<String>(json['tag']);
  if (tag != null) {
    companyListDataListInfoCompanyEnumCompanyRegulatorLevel.tag = tag;
  }
  return companyListDataListInfoCompanyEnumCompanyRegulatorLevel;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyRegulatorLevelToJson(
    CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['tag'] = entity.tag;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyRegulatorLevelExtension on CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel {
  CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel copyWith({
    String? id,
    String? name,
    String? engName,
    String? tag,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..tag = tag ?? this.tag;
  }
}

CompanyListDataListInfoCompanyEnumRegion $CompanyListDataListInfoCompanyEnumRegionFromJson(Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumRegion companyListDataListInfoCompanyEnumRegion = CompanyListDataListInfoCompanyEnumRegion();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumRegion.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumRegion.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    companyListDataListInfoCompanyEnumRegion.engName = engName;
  }
  final String? romanAlpha = jsonConvert.convert<String>(json['roman_alpha']);
  if (romanAlpha != null) {
    companyListDataListInfoCompanyEnumRegion.romanAlpha = romanAlpha;
  }
  final String? cityCode = jsonConvert.convert<String>(json['city_code']);
  if (cityCode != null) {
    companyListDataListInfoCompanyEnumRegion.cityCode = cityCode;
  }
  final String? alphaCode = jsonConvert.convert<String>(json['alpha_code']);
  if (alphaCode != null) {
    companyListDataListInfoCompanyEnumRegion.alphaCode = alphaCode;
  }
  final String? superiorCode = jsonConvert.convert<String>(json['superior_code']);
  if (superiorCode != null) {
    companyListDataListInfoCompanyEnumRegion.superiorCode = superiorCode;
  }
  final String? level = jsonConvert.convert<String>(json['level']);
  if (level != null) {
    companyListDataListInfoCompanyEnumRegion.level = level;
  }
  return companyListDataListInfoCompanyEnumRegion;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumRegionToJson(CompanyListDataListInfoCompanyEnumRegion entity) {
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

extension CompanyListDataListInfoCompanyEnumRegionExtension on CompanyListDataListInfoCompanyEnumRegion {
  CompanyListDataListInfoCompanyEnumRegion copyWith({
    String? id,
    String? name,
    String? engName,
    String? romanAlpha,
    String? cityCode,
    String? alphaCode,
    String? superiorCode,
    String? level,
  }) {
    return CompanyListDataListInfoCompanyEnumRegion()
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

CompanyListDataListInfoCompanyEnumVerifyState $CompanyListDataListInfoCompanyEnumVerifyStateFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumVerifyState companyListDataListInfoCompanyEnumVerifyState = CompanyListDataListInfoCompanyEnumVerifyState();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumVerifyState.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumVerifyState.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    companyListDataListInfoCompanyEnumVerifyState.engName = engName;
  }
  return companyListDataListInfoCompanyEnumVerifyState;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumVerifyStateToJson(
    CompanyListDataListInfoCompanyEnumVerifyState entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension CompanyListDataListInfoCompanyEnumVerifyStateExtension on CompanyListDataListInfoCompanyEnumVerifyState {
  CompanyListDataListInfoCompanyEnumVerifyState copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return CompanyListDataListInfoCompanyEnumVerifyState()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

CompanyListDataListInfoCompanyEnumSourceFrom $CompanyListDataListInfoCompanyEnumSourceFromFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumSourceFrom companyListDataListInfoCompanyEnumSourceFrom = CompanyListDataListInfoCompanyEnumSourceFrom();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumSourceFrom.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumSourceFrom.name = name;
  }
  return companyListDataListInfoCompanyEnumSourceFrom;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumSourceFromToJson(
    CompanyListDataListInfoCompanyEnumSourceFrom entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension CompanyListDataListInfoCompanyEnumSourceFromExtension on CompanyListDataListInfoCompanyEnumSourceFrom {
  CompanyListDataListInfoCompanyEnumSourceFrom copyWith({
    String? id,
    String? name,
  }) {
    return CompanyListDataListInfoCompanyEnumSourceFrom()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus $CompanyListDataListInfoCompanyEnumCompanyCheckoutStatusFromJson(
    Map<String, dynamic> json) {
  final CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus companyListDataListInfoCompanyEnumCompanyCheckoutStatus = CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    companyListDataListInfoCompanyEnumCompanyCheckoutStatus.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    companyListDataListInfoCompanyEnumCompanyCheckoutStatus.name = name;
  }
  return companyListDataListInfoCompanyEnumCompanyCheckoutStatus;
}

Map<String, dynamic> $CompanyListDataListInfoCompanyEnumCompanyCheckoutStatusToJson(
    CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension CompanyListDataListInfoCompanyEnumCompanyCheckoutStatusExtension on CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus {
  CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus copyWith({
    String? id,
    String? name,
  }) {
    return CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}