import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_building_type_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_building_type_entity.g.dart';

@JsonSerializable()
class EnumBuildingTypeEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumBuildingTypeEntity();

	factory EnumBuildingTypeEntity.fromJson(Map<String, dynamic> json) => $EnumBuildingTypeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumBuildingTypeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}