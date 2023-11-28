import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_building_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_building_entity.g.dart';

@JsonSerializable()
class InfoBuildingEntity {
	@JSONField(name: "building_id")
	String? buildingId = '';
	@JSONField(name: "building_name")
	String? buildingName = '';
	@JSONField(name: "enum_building_type")
	InfoBuildingEnumBuildingType? enumBuildingType;
	@JSONField(name: "build_time")
	String? buildTime = '';
	@JSONField(name: "enum_building_property")
	InfoBuildingEnumBuildingProperty? enumBuildingProperty;
	@JSONField(name: "enum_building_fire_level")
	InfoBuildingEnumBuildingFireLevel? enumBuildingFireLevel;
	@JSONField(name: "enum_building_fire_resistance")
	InfoBuildingEnumBuildingFireResistance? enumBuildingFireResistance;
	@JSONField(name: "enum_building_structure")
	InfoBuildingEnumBuildingStructure? enumBuildingStructure;
	@JSONField(name: "building_height")
	String? buildingHeight = '';
	@JSONField(name: "building_area")
	String? buildingArea = '';
	@JSONField(name: "site_area")
	String? siteArea = '';
	@JSONField(name: "normal_floor_area")
	String? normalFloorArea = '';
	@JSONField(name: "ongrounder_floors")
	String? ongrounderFloors = '';
	@JSONField(name: "underground_floors")
	String? undergroundFloors = '';
	@JSONField(name: "ongrounder_area")
	String? ongrounderArea = '';
	@JSONField(name: "underground_area")
	String? undergroundArea = '';
	@JSONField(name: "tunnel_height")
	String? tunnelHeight = '';
	@JSONField(name: "tunnel_length")
	String? tunnelLength = '';
	@JSONField(name: "control_room_location")
	String? controlRoomLocation = '';
	@JSONField(name: "refuge_floor_count")
	String? refugeFloorCount = '';
	@JSONField(name: "refuge_floor_area")
	String? refugeFloorArea = '';
	@JSONField(name: "refuge_floor_location")
	String? refugeFloorLocation = '';
	@JSONField(name: "exit_count")
	String? exitCount = '';
	@JSONField(name: "exit_location")
	String? exitLocation = '';
	@JSONField(name: "exit_form")
	String? exitForm = '';
	@JSONField(name: "fire_elevator_count")
	String? fireElevatorCount = '';
	@JSONField(name: "fire_elevator_weight")
	String? fireElevatorWeight = '';
	@JSONField(name: "working_time_population")
	String? workingTimePopulation = '';
	@JSONField(name: "max_population")
	String? maxPopulation = '';
	@JSONField(name: "main_storage_name")
	String? mainStorageName = '';
	@JSONField(name: "main_storage_count")
	String? mainStorageCount = '';
	@JSONField(name: "main_storage_nature")
	String? mainStorageNature = '';
	@JSONField(name: "main_storage_form")
	String? mainStorageForm = '';
	@JSONField(name: "main_storage_capacity")
	String? mainStorageCapacity = '';
	@JSONField(name: "main_storage_material")
	String? mainStorageMaterial = '';
	@JSONField(name: "main_storage_product")
	String? mainStorageProduct = '';
	@JSONField(name: "neighbor_building_desc")
	String? neighborBuildingDesc = '';
	@JSONField(name: "building_3d_graph")
	String? building3dGraph = '';
	@JSONField(name: "building_outlook_graph")
	String? buildingOutlookGraph = '';
	@JSONField(name: "equipment_2d_graph")
	String? equipment2dGraph = '';
	@JSONField(name: "building_2d_graph")
	String? building2dGraph = '';
	@JSONField(name: "company_name")
	String? companyName = '';
	@JSONField(name: "control_room_phone")
	String? controlRoomPhone = '';
	@JSONField(name: "control_room_describe")
	String? controlRoomDescribe = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "indoormap_id")
	String? indoormapId = '';
	@JSONField(name: "subdistrict_id")
	String? subdistrictId = '';
	@JSONField(name: "property_manage_company_name")
	String? propertyManageCompanyName = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "safety_responsibility_name")
	String? safetyResponsibilityName = '';
	@JSONField(name: "safety_responsibility_phone")
	String? safetyResponsibilityPhone = '';
	@JSONField(name: "safety_manager_name")
	String? safetyManagerName = '';
	@JSONField(name: "safety_manager_phone")
	String? safetyManagerPhone = '';
	InfoBuildingCreater? creater;

	InfoBuildingEntity();

	factory InfoBuildingEntity.fromJson(Map<String, dynamic> json) => $InfoBuildingEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingEnumBuildingType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoBuildingEnumBuildingType();

	factory InfoBuildingEnumBuildingType.fromJson(Map<String, dynamic> json) => $InfoBuildingEnumBuildingTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEnumBuildingTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingEnumBuildingProperty {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoBuildingEnumBuildingProperty();

	factory InfoBuildingEnumBuildingProperty.fromJson(Map<String, dynamic> json) => $InfoBuildingEnumBuildingPropertyFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEnumBuildingPropertyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingEnumBuildingFireLevel {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoBuildingEnumBuildingFireLevel();

	factory InfoBuildingEnumBuildingFireLevel.fromJson(Map<String, dynamic> json) => $InfoBuildingEnumBuildingFireLevelFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEnumBuildingFireLevelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingEnumBuildingFireResistance {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoBuildingEnumBuildingFireResistance();

	factory InfoBuildingEnumBuildingFireResistance.fromJson(Map<String, dynamic> json) => $InfoBuildingEnumBuildingFireResistanceFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEnumBuildingFireResistanceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingEnumBuildingStructure {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoBuildingEnumBuildingStructure();

	factory InfoBuildingEnumBuildingStructure.fromJson(Map<String, dynamic> json) => $InfoBuildingEnumBuildingStructureFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingEnumBuildingStructureToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreater {
	@JSONField(name: "user_id")
	int? userId = 0;
	@JSONField(name: "enum_user_type")
	InfoBuildingCreaterEnumUserType? enumUserType;
	@JSONField(name: "enum_user_role")
	InfoBuildingCreaterEnumUserRole? enumUserRole;
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
	InfoBuildingCreaterEnumUserStaff? enumUserStaff;
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
	InfoBuildingCreaterEnumUserStatus? enumUserStatus;
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
	InfoBuildingCreaterEnumUserAlarmMode? enumUserAlarmMode;
	@JSONField(name: "time_start_alarm_mode")
	String? timeStartAlarmMode = '';
	@JSONField(name: "user_pic")
	List<InfoBuildingCreaterUserPic>? userPic = [];
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

	InfoBuildingCreater();

	factory InfoBuildingCreater.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterEnumUserType {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;

	InfoBuildingCreaterEnumUserType();

	factory InfoBuildingCreaterEnumUserType.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterEnumUserTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterEnumUserTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterEnumUserRole {
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

	InfoBuildingCreaterEnumUserRole();

	factory InfoBuildingCreaterEnumUserRole.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterEnumUserRoleFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterEnumUserRoleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterEnumUserStaff {
	int? id = 0;
	String? name = '';

	InfoBuildingCreaterEnumUserStaff();

	factory InfoBuildingCreaterEnumUserStaff.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterEnumUserStaffFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterEnumUserStaffToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterEnumUserStatus {
	int? id = 0;
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	InfoBuildingCreaterEnumUserStatus();

	factory InfoBuildingCreaterEnumUserStatus.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterEnumUserStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterEnumUserStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterEnumUserAlarmMode {
	int? id = 0;
	String? name = '';

	InfoBuildingCreaterEnumUserAlarmMode();

	factory InfoBuildingCreaterEnumUserAlarmMode.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterEnumUserAlarmModeFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterEnumUserAlarmModeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoBuildingCreaterUserPic {
	@JSONField(name: "file_id")
	int? fileId = 0;
	@JSONField(name: "absolute_path")
	String? absolutePath = '';

	InfoBuildingCreaterUserPic();

	factory InfoBuildingCreaterUserPic.fromJson(Map<String, dynamic> json) => $InfoBuildingCreaterUserPicFromJson(json);

	Map<String, dynamic> toJson() => $InfoBuildingCreaterUserPicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}