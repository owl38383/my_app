import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_area_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_area_entity.g.dart';

@JsonSerializable()
class InfoAreaEntity {
	@JSONField(name: "area_id")
	String? areaId = '';
	@JSONField(name: "building_id")
	String? buildingId = '';
	@JSONField(name: "floor_id")
	String? floorId = '';
	@JSONField(name: "area_type")
	String? areaType = '';
	@JSONField(name: "area_name")
	String? areaName = '';
	@JSONField(name: "area_size")
	String? areaSize = '';
	String? desc = '';
	@JSONField(name: "create_time")
	String? createTime = '';
	@JSONField(name: "update_time")
	String? updateTime = '';
	@JSONField(name: "creater_id")
	String? createrId = '';
	@JSONField(name: "is_del")
	String? isDel = '';
	@JSONField(name: "safety_responsibility_name")
	String? safetyResponsibilityName = '';
	@JSONField(name: "safety_responsibility_phone")
	String? safetyResponsibilityPhone = '';
	@JSONField(name: "safety_manager_name")
	String? safetyManagerName = '';
	@JSONField(name: "safety_manager_phone")
	String? safetyManagerPhone = '';

	InfoAreaEntity();

	factory InfoAreaEntity.fromJson(Map<String, dynamic> json) => $InfoAreaEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoAreaEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}