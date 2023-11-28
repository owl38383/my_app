import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_linkage_status_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_linkage_status_entity.g.dart';

@JsonSerializable()
class EnumDeviceLinkageStatusEntity {
	String? id = '';
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	EnumDeviceLinkageStatusEntity();

	factory EnumDeviceLinkageStatusEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceLinkageStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceLinkageStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}