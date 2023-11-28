import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_status_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_status_entity.g.dart';

@JsonSerializable()
class EnumDeviceStatusEntity {
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

	EnumDeviceStatusEntity();

	factory EnumDeviceStatusEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}