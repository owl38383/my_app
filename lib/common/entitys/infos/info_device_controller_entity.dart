import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_device_controller_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_device_controller_entity.g.dart';

@JsonSerializable()
class InfoDeviceControllerEntity {
	@JSONField(name: "controller_id")
	String? controllerId = '';
	@JSONField(name: "controller_no")
	String? controllerNo = '';
	@JSONField(name: "dtu_id")
	String? dtuId = '';
	@JSONField(name: "networking_date")
	String? networkingDate = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "is_del")
	String? isDel = '';

	InfoDeviceControllerEntity();

	factory InfoDeviceControllerEntity.fromJson(Map<String, dynamic> json) => $InfoDeviceControllerEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceControllerEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}