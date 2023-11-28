import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_building_fire_resistance_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_building_fire_resistance_entity.g.dart';

@JsonSerializable()
class EnumBuildingFireResistanceEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumBuildingFireResistanceEntity();

	factory EnumBuildingFireResistanceEntity.fromJson(Map<String, dynamic> json) => $EnumBuildingFireResistanceEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumBuildingFireResistanceEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}