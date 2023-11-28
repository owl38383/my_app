import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_user_type_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_user_type_entity.g.dart';

@JsonSerializable()
class EnumUserTypeEntity {
	int? id = 0;
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';
	@JSONField(name: "company_class")
	String? companyClass = '';
	@JSONField(name: "used_flag")
	int? usedFlag = 0;

	EnumUserTypeEntity();

	factory EnumUserTypeEntity.fromJson(Map<String, dynamic> json) => $EnumUserTypeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumUserTypeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}