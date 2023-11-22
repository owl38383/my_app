import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/company_list_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/company_list_entity.g.dart';

@JsonSerializable()
class CompanyListEntity {
	late int code = 0;
	late String msg = '';
	@JSONField(name: "eng_msg")
	late String engMsg = '';
	late CompanyListData data;

	CompanyListEntity();

	factory CompanyListEntity.fromJson(Map<String, dynamic> json) => $CompanyListEntityFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListData {
	late int total = 0;
	late List<CompanyListDataList> list = [];

	CompanyListData();

	factory CompanyListData.fromJson(Map<String, dynamic> json) => $CompanyListDataFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataList {
	@JSONField(name: "info_company")
	late CompanyListDataListInfoCompany infoCompany;
	@JSONField(name: "system_type")
	late List<dynamic> systemType = [];

	CompanyListDataList();

	factory CompanyListDataList.fromJson(Map<String, dynamic> json) => $CompanyListDataListFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompany {
	@JSONField(name: "company_id")
	late String companyId = '';
	@JSONField(name: "company_name")
	late String companyName = '';
	@JSONField(name: "company_code")
	late String companyCode = '';
	@JSONField(name: "enum_company_category")
	late CompanyListDataListInfoCompanyEnumCompanyCategory enumCompanyCategory;
	@JSONField(name: "enum_company_type")
	late CompanyListDataListInfoCompanyEnumCompanyType enumCompanyType;
	@JSONField(name: "enum_company_online_status")
	late CompanyListDataListInfoCompanyEnumCompanyOnlineStatus enumCompanyOnlineStatus;
	@JSONField(name: "enum_company_economic")
	late CompanyListDataListInfoCompanyEnumCompanyEconomic enumCompanyEconomic;
	@JSONField(name: "enum_company_regulator_level")
	late CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel enumCompanyRegulatorLevel;
	@JSONField(name: "company_region")
	late String companyRegion = '';
	@JSONField(name: "company_address")
	late String companyAddress = '';
	@JSONField(name: "company_address_specific")
	late String companyAddressSpecific = '';
	@JSONField(name: "contact_phone")
	late String contactPhone = '';
	@JSONField(name: "post_code")
	late String postCode = '';
	@JSONField(name: "staff_total")
	late String staffTotal = '';
	@JSONField(name: "setup_time")
	late String setupTime = '';
	@JSONField(name: "legal_representative_name")
	late String legalRepresentativeName = '';
	@JSONField(name: "legal_representative_phone")
	late String legalRepresentativePhone = '';
	@JSONField(name: "legal_representative_code")
	late String legalRepresentativeCode = '';
	@JSONField(name: "business_license_graph")
	late String businessLicenseGraph = '';
	@JSONField(name: "permanent_assets")
	late String permanentAssets = '';
	@JSONField(name: "company_short_name")
	late String companyShortName = '';
	@JSONField(name: "city_name")
	late String cityName = '';
	@JSONField(name: "city_code")
	late String cityCode = '';
	@JSONField(name: "enum_region")
	late CompanyListDataListInfoCompanyEnumRegion enumRegion;
	@JSONField(name: "create_time")
	late String createTime = '';
	@JSONField(name: "update_time")
	late String updateTime = '';
	@JSONField(name: "creater_id")
	late String createrId = '';
	@JSONField(name: "thing_type")
	late String thingType = '';
	@JSONField(name: "enum_verify_state")
	late CompanyListDataListInfoCompanyEnumVerifyState enumVerifyState;
	@JSONField(name: "last_verify_time")
	late String lastVerifyTime = '';
	@JSONField(name: "last_event_time")
	late String lastEventTime = '';
	@JSONField(name: "enum_event_frequence")
	dynamic enumEventFrequence;
	@JSONField(name: "enum_source_from")
	late CompanyListDataListInfoCompanyEnumSourceFrom enumSourceFrom;
	@JSONField(name: "is_active")
	late String isActive = '';
	@JSONField(name: "is_shadow")
	late String isShadow = '';
	@JSONField(name: "login_num")
	late String loginNum = '';
	@JSONField(name: "networking_date")
	late String networkingDate = '';
	@JSONField(name: "creater_thing_id")
	late String createrThingId = '';
	@JSONField(name: "creater_thing_type")
	late String createrThingType = '';
	@JSONField(name: "is_del")
	late String isDel = '';
	@JSONField(name: "enum_company_checkout_status")
	late CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus enumCompanyCheckoutStatus;
	@JSONField(name: "is_pass_audit")
	late String isPassAudit = '';
	@JSONField(name: "legal_representative_code_pic1")
	late String legalRepresentativeCodePic1 = '';
	@JSONField(name: "has_checkout_device")
	late String hasCheckoutDevice = '';
	@JSONField(name: "legal_representative_code_pic2")
	late String legalRepresentativeCodePic2 = '';
	@JSONField(name: "is_effective")
	late String isEffective = '';
	@JSONField(name: "base_map_id")
	late String baseMapId = '';
	@JSONField(name: "limit_device_count")
	late String limitDeviceCount = '';
	@JSONField(name: "limit_user_count")
	late String limitUserCount = '';
	@JSONField(name: "limit_building_count")
	late String limitBuildingCount = '';
	@JSONField(name: "is_bind")
	late String isBind = '';
	late String score = '';

	CompanyListDataListInfoCompany();

	factory CompanyListDataListInfoCompany.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyCategory {
	late String id = '';
	late String name = '';
	@JSONField(name: "is_used")
	late String isUsed = '';

	CompanyListDataListInfoCompanyEnumCompanyCategory();

	factory CompanyListDataListInfoCompanyEnumCompanyCategory.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyCategoryFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyCategoryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyType {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "is_show")
	late String isShow = '';

	CompanyListDataListInfoCompanyEnumCompanyType();

	factory CompanyListDataListInfoCompanyEnumCompanyType.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyTypeFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyOnlineStatus {
	late String id = '';
	late String status = '';
	@JSONField(name: "eng_status")
	late String engStatus = '';

	CompanyListDataListInfoCompanyEnumCompanyOnlineStatus();

	factory CompanyListDataListInfoCompanyEnumCompanyOnlineStatus.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyOnlineStatusFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyOnlineStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyEconomic {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	CompanyListDataListInfoCompanyEnumCompanyEconomic();

	factory CompanyListDataListInfoCompanyEnumCompanyEconomic.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyEconomicFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyEconomicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	late String tag = '';

	CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel();

	factory CompanyListDataListInfoCompanyEnumCompanyRegulatorLevel.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyRegulatorLevelFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyRegulatorLevelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumRegion {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "roman_alpha")
	late String romanAlpha = '';
	@JSONField(name: "city_code")
	late String cityCode = '';
	@JSONField(name: "alpha_code")
	late String alphaCode = '';
	@JSONField(name: "superior_code")
	late String superiorCode = '';
	late String level = '';

	CompanyListDataListInfoCompanyEnumRegion();

	factory CompanyListDataListInfoCompanyEnumRegion.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumRegionFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumRegionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumVerifyState {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	CompanyListDataListInfoCompanyEnumVerifyState();

	factory CompanyListDataListInfoCompanyEnumVerifyState.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumVerifyStateFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumVerifyStateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumSourceFrom {
	late String id = '';
	late String name = '';

	CompanyListDataListInfoCompanyEnumSourceFrom();

	factory CompanyListDataListInfoCompanyEnumSourceFrom.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumSourceFromFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumSourceFromToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus {
	late String id = '';
	late String name = '';

	CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus();

	factory CompanyListDataListInfoCompanyEnumCompanyCheckoutStatus.fromJson(Map<String, dynamic> json) => $CompanyListDataListInfoCompanyEnumCompanyCheckoutStatusFromJson(json);

	Map<String, dynamic> toJson() => $CompanyListDataListInfoCompanyEnumCompanyCheckoutStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}