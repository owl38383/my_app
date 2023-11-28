import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_user_role_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_user_role_entity.g.dart';

@JsonSerializable()
class EnumUserRoleEntity {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "enum_user_type")
	int? enumUserType = 0;
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;
	@JSONField(name: "is_admin")
	int? isAdmin = 0;

	EnumUserRoleEntity();

	factory EnumUserRoleEntity.fromJson(Map<String, dynamic> json) => $EnumUserRoleEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumUserRoleEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}