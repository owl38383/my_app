import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_model_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_model_entity.g.dart';

@JsonSerializable()
class EnumDeviceModelEntity {
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

	EnumDeviceModelEntity();

	factory EnumDeviceModelEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceModelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}