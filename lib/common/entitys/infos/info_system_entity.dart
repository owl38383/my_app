import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_system_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_system_entity.g.dart';

@JsonSerializable()
class InfoSystemEntity {
	@JSONField(name: "system_id")
	String? systemId = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	@JSONField(name: "alias_system_name")
	String? aliasSystemName = '';
	@JSONField(name: "company_id")
	String? companyId = '';
	@JSONField(name: "enum_system_type")
	InfoSystemEnumSystemType? enumSystemType;
	@JSONField(name: "enum_system_status")
	InfoSystemEnumSystemStatus? enumSystemStatus;
	@JSONField(name: "building_type_text")
	String? buildingTypeText = '';
	@JSONField(name: "manufacture_text")
	String? manufactureText = '';
	@JSONField(name: "maintenance_text")
	String? maintenanceText = '';
	@JSONField(name: "floor_text")
	String? floorText = '';
	@JSONField(name: "device_location_text")
	String? deviceLocationText = '';
	@JSONField(name: "controller_id")
	String? controllerId = '';
	@JSONField(name: "dtu_id")
	String? dtuId = '';
	@JSONField(name: "install_time")
	String? installTime = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	String? remark = '';
	@JSONField(name: "is_del")
	String? isDel = '';

	InfoSystemEntity();

	factory InfoSystemEntity.fromJson(Map<String, dynamic> json) => $InfoSystemEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoSystemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoSystemEnumSystemType {
	String? id = '';
	String? name = '';
	@JSONField(name: "st_name")
	String? stName = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "eng_st_name")
	String? engStName = '';
	String? category = '';
	@JSONField(name: "is_st")
	String? isSt = '';
	@JSONField(name: "is_used")
	String? isUsed = '';

	InfoSystemEnumSystemType();

	factory InfoSystemEnumSystemType.fromJson(Map<String, dynamic> json) => $InfoSystemEnumSystemTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoSystemEnumSystemTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoSystemEnumSystemStatus {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_normal")
	String? isNormal = '';

	InfoSystemEnumSystemStatus();

	factory InfoSystemEnumSystemStatus.fromJson(Map<String, dynamic> json) => $InfoSystemEnumSystemStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoSystemEnumSystemStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}