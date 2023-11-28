import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_device_dtu_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_device_dtu_entity.g.dart';

@JsonSerializable()
class InfoDeviceDtuEntity {
	@JSONField(name: "thing_id")
	String? thingId = '';
	@JSONField(name: "thing_type")
	String? thingType = '';
	String? name = '';
	@JSONField(name: "enum_device_model")
	InfoDeviceDtuEnumDeviceModel? enumDeviceModel;
	@JSONField(name: "enum_device_class")
	InfoDeviceDtuEnumDeviceClass? enumDeviceClass;
	@JSONField(name: "enum_device_type")
	InfoDeviceDtuEnumDeviceType? enumDeviceType;

	InfoDeviceDtuEntity();

	factory InfoDeviceDtuEntity.fromJson(Map<String, dynamic> json) => $InfoDeviceDtuEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceDtuEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceDtuEnumDeviceModel {
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

	InfoDeviceDtuEnumDeviceModel();

	factory InfoDeviceDtuEnumDeviceModel.fromJson(Map<String, dynamic> json) => $InfoDeviceDtuEnumDeviceModelFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceDtuEnumDeviceModelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceDtuEnumDeviceClass {
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

	InfoDeviceDtuEnumDeviceClass();

	factory InfoDeviceDtuEnumDeviceClass.fromJson(Map<String, dynamic> json) => $InfoDeviceDtuEnumDeviceClassFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceDtuEnumDeviceClassToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoDeviceDtuEnumDeviceType {
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

	InfoDeviceDtuEnumDeviceType();

	factory InfoDeviceDtuEnumDeviceType.fromJson(Map<String, dynamic> json) => $InfoDeviceDtuEnumDeviceTypeFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceDtuEnumDeviceTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}