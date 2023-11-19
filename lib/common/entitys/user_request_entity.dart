import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/user_request_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/user_request_entity.g.dart';

@JsonSerializable()
class UserRequestEntity {
	@JSONField(name: "user_name")
	late String userName;
	@JSONField(name: "user_pwd")
	late String userPwd;

	UserRequestEntity();

	factory UserRequestEntity.fromJson(Map<String, dynamic> json) => $UserRequestEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserRequestEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}