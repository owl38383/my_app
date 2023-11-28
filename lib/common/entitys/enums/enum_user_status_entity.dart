import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_user_status_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_user_status_entity.g.dart';

@JsonSerializable()
class EnumUserStatusEntity {
	int? id = 0;
	String? status = '';
	@JSONField(name: "eng_status")
	String? engStatus = '';

	EnumUserStatusEntity();

	factory EnumUserStatusEntity.fromJson(Map<String, dynamic> json) => $EnumUserStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumUserStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}