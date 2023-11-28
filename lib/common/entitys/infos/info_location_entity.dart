import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_location_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_location_entity.g.dart';

@JsonSerializable()
class InfoLocationEntity {
	@JSONField(name: "location_id")
	String? locationId = '';
	@JSONField(name: "enum_location_type")
	InfoLocationEnumLocationType? enumLocationType;
	@JSONField(name: "file_id")
	String? fileId = '';
	String? longitude = '';
	String? latitude = '';
	String? address = '';
	String? region = '';
	String? subdistrict = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "coordinate_cluster")
	String? coordinateCluster = '';
	InfoLocationCreater? creater;

	InfoLocationEntity();

	factory InfoLocationEntity.fromJson(Map<String, dynamic> json) => $InfoLocationEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationEnumLocationType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	dynamic engName;

	InfoLocationEnumLocationType();

	factory InfoLocationEnumLocationType.fromJson(Map<String, dynamic> json) => $InfoLocationEnumLocationTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationEnumLocationTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreater {
	@JSONField(name: "user_id")
	int? userId = 0;
	@JSONField(name: "enum_user_type")
	InfoLocationCreaterEnumUserType? enumUserType;
	@JSONField(name: "enum_user_role")
	InfoLocationCreaterEnumUserRole? enumUserRole;
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
	InfoLocationCreaterEnumUserStaff? enumUserStaff;
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
	InfoLocationCreaterEnumUserStatus? enumUserStatus;
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
	InfoLocationCreaterEnumUserAlarmMode? enumUserAlarmMode;
	@JSONField(name: "time_start_alarm_mode")
	String? timeStartAlarmMode = '';
	@JSONField(name: "user_pic")
	List<InfoLocationCreaterUserPic>? userPic = [];
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

	InfoLocationCreater();

	factory InfoLocationCreater.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterEnumUserType {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;

	InfoLocationCreaterEnumUserType();

	factory InfoLocationCreaterEnumUserType.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterEnumUserTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterEnumUserTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterEnumUserRole {
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

	InfoLocationCreaterEnumUserRole();

	factory InfoLocationCreaterEnumUserRole.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterEnumUserRoleFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterEnumUserRoleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterEnumUserStaff {
	int? id = 0;
	String? name = '';

	InfoLocationCreaterEnumUserStaff();

	factory InfoLocationCreaterEnumUserStaff.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterEnumUserStaffFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterEnumUserStaffToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterEnumUserStatus {
	int? id = 0;
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoLocationCreaterEnumUserStatus();

	factory InfoLocationCreaterEnumUserStatus.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterEnumUserStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterEnumUserStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterEnumUserAlarmMode {
	int? id = 0;
	String? name = '';

	InfoLocationCreaterEnumUserAlarmMode();

	factory InfoLocationCreaterEnumUserAlarmMode.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterEnumUserAlarmModeFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterEnumUserAlarmModeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoLocationCreaterUserPic {
	@JSONField(name: "file_id")
	int? fileId = 0;
	@JSONField(name: "absolute_path")
	String? absolutePath = '';

	InfoLocationCreaterUserPic();

	factory InfoLocationCreaterUserPic.fromJson(Map<String, dynamic> json) => $InfoLocationCreaterUserPicFromJson(json);

	Map<String, dynamic> toJson() => $InfoLocationCreaterUserPicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}