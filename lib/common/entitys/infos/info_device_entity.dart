import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_device_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_device_entity.g.dart';

@JsonSerializable()
class InfoDeviceEntity {
	@JSONField(name: "thing_id")
	String? thingId = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	String? name = '';
	@JSONField(name: "enum_device_status")
	InfoDeviceEnumDeviceStatus? enumDeviceStatus;
	@JSONField(name: "simple_id")
	String? simpleId = '';
	@JSONField(name: "enum_device_type")
	InfoDeviceEnumDeviceType? enumDeviceType;
	@JSONField(name: "enum_device_model")
	InfoDeviceEnumDeviceModel? enumDeviceModel;
	@JSONField(name: "enum_device_class")
	InfoDeviceEnumDeviceClass? enumDeviceClass;
	@JSONField(name: "sub_class")
	String? subClass = '';
	@JSONField(name: "equipment_id")
	String? equipmentId = '';
	@JSONField(name: "company_id")
	String? companyId = '';
	@JSONField(name: "device_code")
	String? deviceCode = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "sending_frequency")
	String? sendingFrequency = '';
	@JSONField(name: "sensing_frequency")
	String? sensingFrequency = '';
	@JSONField(name: "version_id")
	String? versionId = '';
	@JSONField(name: "enum_device_online_status")
	InfoDeviceEnumDeviceOnlineStatus? enumDeviceOnlineStatus;
	@JSONField(name: "sim_number")
	String? simNumber = '';
	String? electricity = '';
	String? specific = '';
	@JSONField(name: "signal_strength")
	String? signalStrength = '';
	@JSONField(name: "enum_device_transmit_mode")
	InfoDeviceEnumDeviceTransmitMode? enumDeviceTransmitMode;
	@JSONField(name: "enum_device_local_transmit_mode")
	dynamic enumDeviceLocalTransmitMode;
	@JSONField(name: "ext_json")
	String? extJson = '';
	@JSONField(name: "install_time")
	String? installTime = '';
	@JSONField(name: "networking_date")
	String? networkingDate = '';
	@JSONField(name: "last_active_time")
	String? lastActiveTime = '';
	String? remarks = '';
	@JSONField(name: "enum_device_linkage_status")
	InfoDeviceEnumDeviceLinkageStatus? enumDeviceLinkageStatus;
	@JSONField(name: "enum_event_frequence")
	dynamic enumEventFrequence;
	@JSONField(name: "enum_device_brand")
	InfoDeviceEnumDeviceBrand? enumDeviceBrand;
	@JSONField(name: "installer_id")
	String? installerId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "enum_position_type")
	InfoDeviceEnumPositionType? enumPositionType;
	@JSONField(name: "display_name")
	String? displayName = '';
	String? account = '';
	String? telephone = '';
	InfoDeviceCreater? creater;

	InfoDeviceEntity();

	factory InfoDeviceEntity.fromJson(Map<String, dynamic> json) => $InfoDeviceEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceStatus {
	String? id = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "short_name")
	String? shortName = '';
	@JSONField(name: "eng_short_name")
	String? engShortName = '';
	@JSONField(name: "status_category")
	String? statusCategory = '';

	InfoDeviceEnumDeviceStatus();

	factory InfoDeviceEnumDeviceStatus.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "enum_device_class")
	String? enumDeviceClass = '';
	@JSONField(name: "default_system_type")
	String? defaultSystemType = '';
	@JSONField(name: "is_st")
	String? isSt = '';
	@JSONField(name: "is_used")
	String? isUsed = '';
	@JSONField(name: "icon_class")
	String? iconClass = '';

	InfoDeviceEnumDeviceType();

	factory InfoDeviceEnumDeviceType.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceModel {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "model_code")
	String? modelCode = '';
	String? brand = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	@JSONField(name: "enum_device_class")
	String? enumDeviceClass = '';
	@JSONField(name: "enum_device_type")
	String? enumDeviceType = '';
	@JSONField(name: "enum_device_brand")
	String? enumDeviceBrand = '';
	String? manufacturer = '';
	@JSONField(name: "alive_time")
	String? aliveTime = '';
	@JSONField(name: "ext_json")
	String? extJson = '';
	@JSONField(name: "is_used")
	String? isUsed = '';
	@JSONField(name: "is_need_protocol")
	String? isNeedProtocol = '';
	String? tags = '';
	@JSONField(name: "is_support_command")
	String? isSupportCommand = '';

	InfoDeviceEnumDeviceModel();

	factory InfoDeviceEnumDeviceModel.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceModelFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceModelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceClass {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "class_type")
	String? classType = '';
	@JSONField(name: "is_used")
	String? isUsed = '';
	@JSONField(name: "dtu_flag")
	String? dtuFlag = '';
	@JSONField(name: "component_flag")
	String? componentFlag = '';

	InfoDeviceEnumDeviceClass();

	factory InfoDeviceEnumDeviceClass.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceClassFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceClassToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceOnlineStatus {
	String? id = '';
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoDeviceEnumDeviceOnlineStatus();

	factory InfoDeviceEnumDeviceOnlineStatus.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceOnlineStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceOnlineStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceTransmitMode {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_show")
	String? isShow = '';

	InfoDeviceEnumDeviceTransmitMode();

	factory InfoDeviceEnumDeviceTransmitMode.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceTransmitModeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceTransmitModeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceLinkageStatus {
	String? id = '';
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoDeviceEnumDeviceLinkageStatus();

	factory InfoDeviceEnumDeviceLinkageStatus.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceLinkageStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceLinkageStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumDeviceBrand {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_used")
	String? isUsed = '';

	InfoDeviceEnumDeviceBrand();

	factory InfoDeviceEnumDeviceBrand.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumDeviceBrandFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumDeviceBrandToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceEnumPositionType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoDeviceEnumPositionType();

	factory InfoDeviceEnumPositionType.fromJson(Map<String, dynamic> json) => $InfoDeviceEnumPositionTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceEnumPositionTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreater {
	@JSONField(name: "user_id")
	int? userId = 0;
	@JSONField(name: "enum_user_type")
	InfoDeviceCreaterEnumUserType? enumUserType;
	@JSONField(name: "enum_user_role")
	InfoDeviceCreaterEnumUserRole? enumUserRole;
	@JSONField(name: "phone_num")
	String? phoneNum = '';
	String? email = '';
	String? name = '';
	@JSONField(name: "nick_name")
	String? nickName = '';
	int? gender = 0;
	List<dynamic>? avatar = [];
	String? remarks = '';
	String? account = '';
	@JSONField(name: "last_login_time")
	String? lastLoginTime = '';
	@JSONField(name: "joined_time")
	String? joinedTime = '';
	@JSONField(name: "is_superuser")
	int? isSuperuser = 0;
	@JSONField(name: "first_name")
	String? firstName = '';
	@JSONField(name: "last_name")
	String? lastName = '';
	@JSONField(name: "id_code")
	String? idCode = '';
	@JSONField(name: "enum_user_staff")
	InfoDeviceCreaterEnumUserStaff? enumUserStaff;
	@JSONField(name: "is_active")
	int? isActive = 0;
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	int? createrId = 0;
	@JSONField(name: "political_status")
	String? politicalStatus = '';
	@JSONField(name: "enum_user_status")
	InfoDeviceCreaterEnumUserStatus? enumUserStatus;
	@JSONField(name: "time_user_status")
	String? timeUserStatus = '';
	String? nation = '';
	String? address = '';
	@JSONField(name: "account_nature")
	String? accountNature = '';
	@JSONField(name: "account_source")
	int? accountSource = 0;
	@JSONField(name: "center_id")
	int? centerId = 0;
	@JSONField(name: "company_id")
	int? companyId = 0;
	@JSONField(name: "company_type")
	String? companyType = '';
	@JSONField(name: "is_reset_pwd")
	int? isResetPwd = 0;
	@JSONField(name: "enum_user_alarm_mode")
	InfoDeviceCreaterEnumUserAlarmMode? enumUserAlarmMode;
	@JSONField(name: "time_start_alarm_mode")
	String? timeStartAlarmMode = '';
	@JSONField(name: "user_pic")
	List<InfoDeviceCreaterUserPic>? userPic = [];
	@JSONField(name: "register_status")
	int? registerStatus = 0;
	@JSONField(name: "user_value")
	int? userValue = 0;
	@JSONField(name: "user_intention")
	int? userIntention = 0;
	@JSONField(name: "expired_time")
	dynamic expiredTime;
	@JSONField(name: "is_del")
	int? isDel = 0;
	@JSONField(name: "home_vip")
	int? homeVip = 0;
	@JSONField(name: "agree_term")
	int? agreeTerm = 0;

	InfoDeviceCreater();

	factory InfoDeviceCreater.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterEnumUserType {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;

	InfoDeviceCreaterEnumUserType();

	factory InfoDeviceCreaterEnumUserType.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterEnumUserTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterEnumUserTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterEnumUserRole {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "enum_user_type")
	int? enumUserType = 0;
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;
	@JSONField(name: "is_admin")
	int? isAdmin = 0;

	InfoDeviceCreaterEnumUserRole();

	factory InfoDeviceCreaterEnumUserRole.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterEnumUserRoleFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterEnumUserRoleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterEnumUserStaff {
	int? id = 0;
	String? name = '';

	InfoDeviceCreaterEnumUserStaff();

	factory InfoDeviceCreaterEnumUserStaff.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterEnumUserStaffFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterEnumUserStaffToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterEnumUserStatus {
	int? id = 0;
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoDeviceCreaterEnumUserStatus();

	factory InfoDeviceCreaterEnumUserStatus.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterEnumUserStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterEnumUserStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterEnumUserAlarmMode {
	int? id = 0;
	String? name = '';

	InfoDeviceCreaterEnumUserAlarmMode();

	factory InfoDeviceCreaterEnumUserAlarmMode.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterEnumUserAlarmModeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterEnumUserAlarmModeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceCreaterUserPic {
	@JSONField(name: "file_id")
	int? fileId = 0;
	@JSONField(name: "absolute_path")
	String? absolutePath = '';

	InfoDeviceCreaterUserPic();

	factory InfoDeviceCreaterUserPic.fromJson(Map<String, dynamic> json) => $InfoDeviceCreaterUserPicFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceCreaterUserPicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}