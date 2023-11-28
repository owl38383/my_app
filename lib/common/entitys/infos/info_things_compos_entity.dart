import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_things_compos_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_things_compos_entity.g.dart';

@JsonSerializable()
class InfoThingsComposEntity {
	String? id = '';
	@JSONField(name: "thing_id")
	String? thingId = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	@JSONField(name: "enum_device_type")
	InfoThingsComposEnumDeviceType? enumDeviceType;
	@JSONField(name: "enum_position_type")
	InfoThingsComposEnumPositionType? enumPositionType;
	@JSONField(name: "company_id")
	String? companyId = '';
	@JSONField(name: "building_id")
	String? buildingId = '';
	@JSONField(name: "unit_id")
	String? unitId = '';
	@JSONField(name: "floor_id")
	String? floorId = '';
	@JSONField(name: "area_id")
	String? areaId = '';
	@JSONField(name: "room_id")
	String? roomId = '';
	@JSONField(name: "file_id")
	String? fileId = '';
	String? x = '';
	String? y = '';
	String? specific = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "enum_device_class")
	InfoThingsComposEnumDeviceClass? enumDeviceClass;
	@JSONField(name: "subdistrict_id")
	String? subdistrictId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "compos_type")
	String? composType = '';

	InfoThingsComposEntity();

	factory InfoThingsComposEntity.fromJson(Map<String, dynamic> json) => $InfoThingsComposEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsComposEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoThingsComposEnumDeviceType {
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

	InfoThingsComposEnumDeviceType();

	factory InfoThingsComposEnumDeviceType.fromJson(Map<String, dynamic> json) => $InfoThingsComposEnumDeviceTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsComposEnumDeviceTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoThingsComposEnumPositionType {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	InfoThingsComposEnumPositionType();

	factory InfoThingsComposEnumPositionType.fromJson(Map<String, dynamic> json) => $InfoThingsComposEnumPositionTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsComposEnumPositionTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoThingsComposEnumDeviceClass {
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

	InfoThingsComposEnumDeviceClass();

	factory InfoThingsComposEnumDeviceClass.fromJson(Map<String, dynamic> json) => $InfoThingsComposEnumDeviceClassFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsComposEnumDeviceClassToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}