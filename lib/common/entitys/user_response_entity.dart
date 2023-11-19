import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/user_response_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/user_response_entity.g.dart';

@JsonSerializable()
class UserResponseEntity {
	late String token;
	late String lastip;
	late String lastaddr;
	late int lastlogon;
	late int retries;
	late String platform;

	UserResponseEntity();

	factory UserResponseEntity.fromJson(Map<String, dynamic> json) => $UserResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}