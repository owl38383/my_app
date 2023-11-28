import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_device_component_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_device_component_entity.g.dart';

@JsonSerializable()
class InfoDeviceComponentEntity {
	@JSONField(name: "component_id")
	String? componentId = '';
	@JSONField(name: "controller_id")
	String? controllerId = '';
	@JSONField(name: "dtu_id")
	String? dtuId = '';
	@JSONField(name: "loop_number")
	String? loopNumber = '';
	@JSONField(name: "component_number")
	String? componentNumber = '';
	@JSONField(name: "component_code")
	String? componentCode = '';
	@JSONField(name: "networking_date")
	String? networkingDate = '';
	String? extension = '';
	@JSONField(name: "group_transmission")
	String? groupTransmission = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "controller_no")
	String? controllerNo = '';

	InfoDeviceComponentEntity();

	factory InfoDeviceComponentEntity.fromJson(Map<String, dynamic> json) => $InfoDeviceComponentEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoDeviceComponentEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}