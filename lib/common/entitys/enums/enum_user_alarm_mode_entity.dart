import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_user_alarm_mode_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_user_alarm_mode_entity.g.dart';

@JsonSerializable()
class EnumUserAlarmModeEntity {
	int? id = 0;
	String? name = '';

	EnumUserAlarmModeEntity();

	factory EnumUserAlarmModeEntity.fromJson(Map<String, dynamic> json) => $EnumUserAlarmModeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumUserAlarmModeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}