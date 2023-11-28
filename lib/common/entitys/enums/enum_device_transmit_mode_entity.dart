import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_device_transmit_mode_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_device_transmit_mode_entity.g.dart';

@JsonSerializable()
class EnumDeviceTransmitModeEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "is_show")
	String? isShow = '';

	EnumDeviceTransmitModeEntity();

	factory EnumDeviceTransmitModeEntity.fromJson(Map<String, dynamic> json) => $EnumDeviceTransmitModeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumDeviceTransmitModeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}