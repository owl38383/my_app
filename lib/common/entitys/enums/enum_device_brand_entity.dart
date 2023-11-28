import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_brand_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_brand_entity.g.dart';

@JsonSerializable()
class EnumDeviceBrandEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_used")
	String? isUsed = '';

	EnumDeviceBrandEntity();

	factory EnumDeviceBrandEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceBrandEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceBrandEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}