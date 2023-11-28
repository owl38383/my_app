import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/enum_building_structure_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/enum_building_structure_entity.g.dart';

@JsonSerializable()
class EnumBuildingStructureEntity {
	String? id = '';
	String? name = '';
	@JSONField(name: "eng_name")
	String? engName = '';

	EnumBuildingStructureEntity();

	factory EnumBuildingStructureEntity.fromJson(Map<String, dynamic> json) => $EnumBuildingStructureEntityFromJson(json);

	Map<String, dynamic> toJson() => $EnumBuildingStructureEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}