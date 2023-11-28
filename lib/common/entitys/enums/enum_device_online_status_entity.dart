import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_online_status_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_online_status_entity.g.dart';

@JsonSerializable()
class EnumDeviceOnlineStatusEntity {
	String? id = '';
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	EnumDeviceOnlineStatusEntity();

	factory EnumDeviceOnlineStatusEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceOnlineStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceOnlineStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}