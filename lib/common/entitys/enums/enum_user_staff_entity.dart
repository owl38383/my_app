import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_user_staff_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_user_staff_entity.g.dart';

@JsonSerializable()
class EnumUserStaffEntity {
	int? id = 0;
	String? name = '';

	EnumUserStaffEntity();

	factory EnumUserStaffEntity.fromJson(Map<String, dynamic> json) => $EnumUserStaffEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumUserStaffEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}