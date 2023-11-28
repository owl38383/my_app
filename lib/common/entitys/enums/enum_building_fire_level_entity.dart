import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_building_fire_level_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_building_fire_level_entity.g.dart';

@JsonSerializable()
class EnumBuildingFireLevelEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumBuildingFireLevelEntity();

	factory EnumBuildingFireLevelEntity.fromJson(Map<String, dynamic> json) => $EnumBuildingFireLevelEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumBuildingFireLevelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}