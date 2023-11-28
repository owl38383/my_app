import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_floor_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_floor_entity.g.dart';

@JsonSerializable()
class InfoFloorEntity {
	@JSONField(name: "floor_id")
	String? floorId = '';
	@JSONField(name: "building_id")
	String? buildingId = '';
	String? name = '';
	@JSONField(name: "floor_number")
	String? floorNumber = '';
	@JSONField(name: "floor_index")
	String? floorIndex = '';
	@JSONField(name: "area_size")
	String? areaSize = '';
	@JSONField(name: "room_count")
	String? roomCount = '';
	String? height = '';
	@JSONField(name: "is_refuge")
	String? isRefuge = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "indoormap_floor_id")
	String? indoormapFloorId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	InfoFloorCreater? creater;

	InfoFloorEntity();

	factory InfoFloorEntity.fromJson(Map<String, dynamic> json) => $InfoFloorEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreater {
	@JSONField(name: "user_id")
	int? userId = 0;
	@JSONField(name: "enum_user_type")
	InfoFloorCreaterEnumUserType? enumUserType;
	@JSONField(name: "enum_user_role")
	InfoFloorCreaterEnumUserRole? enumUserRole;
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
	InfoFloorCreaterEnumUserStaff? enumUserStaff;
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
	InfoFloorCreaterEnumUserStatus? enumUserStatus;
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
	InfoFloorCreaterEnumUserAlarmMode? enumUserAlarmMode;
	@JSONField(name: "time_start_alarm_mode")
	String? timeStartAlarmMode = '';
	@JSONField(name: "user_pic")
	List<InfoFloorCreaterUserPic>? userPic = [];
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

	InfoFloorCreater();

	factory InfoFloorCreater.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterEnumUserType {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;

	InfoFloorCreaterEnumUserType();

	factory InfoFloorCreaterEnumUserType.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterEnumUserTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterEnumUserTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterEnumUserRole {
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

	InfoFloorCreaterEnumUserRole();

	factory InfoFloorCreaterEnumUserRole.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterEnumUserRoleFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterEnumUserRoleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterEnumUserStaff {
	int? id = 0;
	String? name = '';

	InfoFloorCreaterEnumUserStaff();

	factory InfoFloorCreaterEnumUserStaff.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterEnumUserStaffFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterEnumUserStaffToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterEnumUserStatus {
	int? id = 0;
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoFloorCreaterEnumUserStatus();

	factory InfoFloorCreaterEnumUserStatus.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterEnumUserStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterEnumUserStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterEnumUserAlarmMode {
	int? id = 0;
	String? name = '';

	InfoFloorCreaterEnumUserAlarmMode();

	factory InfoFloorCreaterEnumUserAlarmMode.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterEnumUserAlarmModeFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterEnumUserAlarmModeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoFloorCreaterUserPic {
	@JSONField(name: "file_id")
	int? fileId = 0;
	@JSONField(name: "absolute_path")
	String? absolutePath = '';

	InfoFloorCreaterUserPic();

	factory InfoFloorCreaterUserPic.fromJson(Map<String, dynamic> json) => $InfoFloorCreaterUserPicFromJson(json);

	Map<String, dynamic> toJson() => $InfoFloorCreaterUserPicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}