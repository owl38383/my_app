import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_company_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_company_entity.g.dart';

@JsonSerializable()
class InfoCompanyEntity {
	@JSONField(name: "company_id")
	String? companyId = '';
	@JSONField(name: "company_name")
	String? companyName = '';
	@JSONField(name: "company_code")
	String? companyCode = '';
	@JSONField(name: "enum_company_category")
	InfoCompanyEnumCompanyCategory? enumCompanyCategory;
	@JSONField(name: "enum_company_type")
	InfoCompanyEnumCompanyType? enumCompanyType;
	@JSONField(name: "enum_company_online_status")
	InfoCompanyEnumCompanyOnlineStatus? enumCompanyOnlineStatus;
	@JSONField(name: "enum_company_economic")
	InfoCompanyEnumCompanyEconomic? enumCompanyEconomic;
	@JSONField(name: "enum_company_regulator_level")
	InfoCompanyEnumCompanyRegulatorLevel? enumCompanyRegulatorLevel;
	@JSONField(name: "company_region")
	String? companyRegion = '';
	@JSONField(name: "company_address")
	String? companyAddress = '';
	@JSONField(name: "company_address_specific")
	String? companyAddressSpecific = '';
	@JSONField(name: "contact_phone")
	String? contactPhone = '';
	@JSONField(name: "post_code")
	String? postCode = '';
	@JSONField(name: "staff_total")
	String? staffTotal = '';
	@JSONField(name: "setup_time")
	String? setupTime = '';
	@JSONField(name: "legal_representative_name")
	String? legalRepresentativeName = '';
	@JSONField(name: "legal_representative_phone")
	String? legalRepresentativePhone = '';
	@JSONField(name: "legal_representative_code")
	String? legalRepresentativeCode = '';
	@JSONField(name: "business_license_graph")
	String? businessLicenseGraph = '';
	@JSONField(name: "permanent_assets")
	String? permanentAssets = '';
	@JSONField(name: "company_short_name")
	String? companyShortName = '';
	@JSONField(name: "city_name")
	String? cityName = '';
	@JSONField(name: "city_code")
	String? cityCode = '';
	@JSONField(name: "enum_region")
	InfoCompanyEnumRegion? enumRegion;
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	@JSONField(name: "enum_verify_state")
	InfoCompanyEnumVerifyState? enumVerifyState;
	@JSONField(name: "last_verify_time")
	String? lastVerifyTime = '';
	@JSONField(name: "last_event_time")
	String? lastEventTime = '';
	@JSONField(name: "enum_event_frequence")
	dynamic enumEventFrequence;
	@JSONField(name: "enum_source_from")
	InfoCompanyEnumSourceFrom? enumSourceFrom;
	@JSONField(name: "is_active")
	String? isActive = '';
	@JSONField(name: "is_shadow")
	String? isShadow = '';
	@JSONField(name: "login_num")
	String? loginNum = '';
	@JSONField(name: "networking_date")
	String? networkingDate = '';
	@JSONField(name: "creater_thing_id")
	String? createrThingId = '';
	@JSONField(name: "creater_thing_type")
	String? createrThingType = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "enum_company_checkout_status")
	InfoCompanyEnumCompanyCheckoutStatus? enumCompanyCheckoutStatus;
	@JSONField(name: "is_pass_audit")
	String? isPassAudit = '';
	@JSONField(name: "legal_representative_code_pic1")
	String? legalRepresentativeCodePic1 = '';
	@JSONField(name: "has_checkout_device")
	String? hasCheckoutDevice = '';
	@JSONField(name: "legal_representative_code_pic2")
	String? legalRepresentativeCodePic2 = '';
	@JSONField(name: "is_effective")
	String? isEffective = '';
	@JSONField(name: "base_map_id")
	String? baseMapId = '';
	@JSONField(name: "limit_device_count")
	String? limitDeviceCount = '';
	@JSONField(name: "limit_user_count")
	String? limitUserCount = '';
	@JSONField(name: "limit_building_count")
	String? limitBuildingCount = '';

	InfoCompanyEntity();

	factory InfoCompanyEntity.fromJson(Map<String, dynamic> json) => $InfoCompanyEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyCategory {
	String? id = '';
	String? name = '';
	@JSONField(name: "is_used")
	String? isUsed = '';

	InfoCompanyEnumCompanyCategory();

	factory InfoCompanyEnumCompanyCategory.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyCategoryFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyCategoryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_show")
	String? isShow = '';

	InfoCompanyEnumCompanyType();

	factory InfoCompanyEnumCompanyType.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyOnlineStatus {
	String? id = '';
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoCompanyEnumCompanyOnlineStatus();

	factory InfoCompanyEnumCompanyOnlineStatus.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyOnlineStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyOnlineStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyEconomic {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoCompanyEnumCompanyEconomic();

	factory InfoCompanyEnumCompanyEconomic.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyEconomicFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyEconomicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyRegulatorLevel {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	String? tag = '';

	InfoCompanyEnumCompanyRegulatorLevel();

	factory InfoCompanyEnumCompanyRegulatorLevel.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyRegulatorLevelFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyRegulatorLevelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumRegion {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "roman_alpha")
	String? romanAlpha = '';
	@JSONField(name: "city_code")
	String? cityCode = '';
	@JSONField(name: "alpha_code")
	String? alphaCode = '';
	@JSONField(name: "superior_code")
	String? superiorCode = '';
	String? level = '';

	InfoCompanyEnumRegion();

	factory InfoCompanyEnumRegion.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumRegionFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumRegionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumVerifyState {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoCompanyEnumVerifyState();

	factory InfoCompanyEnumVerifyState.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumVerifyStateFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumVerifyStateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumSourceFrom {
	String? id = '';
	String? name = '';

	InfoCompanyEnumSourceFrom();

	factory InfoCompanyEnumSourceFrom.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumSourceFromFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumSourceFromToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoCompanyEnumCompanyCheckoutStatus {
	String? id = '';
	String? name = '';

	InfoCompanyEnumCompanyCheckoutStatus();

	factory InfoCompanyEnumCompanyCheckoutStatus.fromJson(Map<String, dynamic> json) => $InfoCompanyEnumCompanyCheckoutStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoCompanyEnumCompanyCheckoutStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}