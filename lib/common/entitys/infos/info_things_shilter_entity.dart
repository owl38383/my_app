import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/info_things_shilter_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/info_things_shilter_entity.g.dart';

@JsonSerializable()
class InfoThingsShilterEntity {
	@JSONField(name: "enum_shield_status")
	InfoThingsShilterEnumShieldStatus? enumShieldStatus;

	InfoThingsShilterEntity();

	factory InfoThingsShilterEntity.fromJson(Map<String, dynamic> json) => $InfoThingsShilterEntityFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsShilterEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class InfoThingsShilterEnumShieldStatus {
	String? id = '';
	String? name = '';

	InfoThingsShilterEnumShieldStatus();

	factory InfoThingsShilterEnumShieldStatus.fromJson(Map<String, dynamic> json) => $InfoThingsShilterEnumShieldStatusFromJson(json);

	Map<String, dynamic> toJson() => $InfoThingsShilterEnumShieldStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}