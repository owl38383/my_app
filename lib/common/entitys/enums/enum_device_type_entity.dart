import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_type_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_type_entity.g.dart';

@JsonSerializable()
class EnumDeviceTypeEntity {
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

	EnumDeviceTypeEntity();

	factory EnumDeviceTypeEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceTypeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceTypeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}