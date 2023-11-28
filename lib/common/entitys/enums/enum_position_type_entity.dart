import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_position_type_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_position_type_entity.g.dart';

@JsonSerializable()
class EnumPositionTypeEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumPositionTypeEntity();

	factory EnumPositionTypeEntity.fromJson(Map<String, dynamic> json) => $EnumPositionTypeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumPositionTypeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}