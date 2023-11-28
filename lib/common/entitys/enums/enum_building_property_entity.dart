import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_building_property_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_building_property_entity.g.dart';

@JsonSerializable()
class EnumBuildingPropertyEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumBuildingPropertyEntity();

	factory EnumBuildingPropertyEntity.fromJson(Map<String, dynamic> json) => $EnumBuildingPropertyEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumBuildingPropertyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}