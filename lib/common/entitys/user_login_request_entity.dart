import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/user_login_request_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/user_login_request_entity.g.dart';

@JsonSerializable()
class UserLoginRequestEntity {
	@JSONField(name: "user_name")
	late String userName;
	@JSONField(name: "user_pwd")
	late String userPwd;

	UserLoginRequestEntity();

	factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) => $UserLoginRequestEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserLoginRequestEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}