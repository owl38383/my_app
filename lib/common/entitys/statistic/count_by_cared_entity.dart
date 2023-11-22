import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/count_by_cared_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/count_by_cared_entity.g.dart';

@JsonSerializable()
class CountByCaredEntity {
	late int code = 0;
	late String msg = '';
	@JSONField(name: "eng_msg")
	late String engMsg = '';
	late CountByCaredData data;

	CountByCaredEntity();

	factory CountByCaredEntity.fromJson(Map<String, dynamic> json) => $CountByCaredEntityFromJson(json);

	Map<String, dynamic> toJson() => $CountByCaredEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CountByCaredData {
	@JSONField(name: "device_total")
	late String deviceTotal = '';
	@JSONField(name: "count_alarm_device")
	late String countAlarmDevice = '';
	@JSONField(name: "count_fault_device")
	late String countFaultDevice = '';
	@JSONField(name: "count_abnormal_device")
	late String countAbnormalDevice = '';
	@JSONField(name: "offline_device_total")
	late String offlineDeviceTotal = '';

	CountByCaredData();

	factory CountByCaredData.fromJson(Map<String, dynamic> json) => $CountByCaredDataFromJson(json);

	Map<String, dynamic> toJson() => $CountByCaredDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}