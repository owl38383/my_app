import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_class_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_class_entity.g.dart';

@JsonSerializable()
class EnumDeviceClassEntity {
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

	EnumDeviceClassEntity();

	factory EnumDeviceClassEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceClassEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceClassEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}