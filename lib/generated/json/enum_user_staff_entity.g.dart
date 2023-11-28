import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_user_staff_entity.dart';

EnumUserStaffEntity $EnumUserStaffEntityFromJson(Map<String, dynamic> json) {
  final EnumUserStaffEntity enumUserStaffEntity = EnumUserStaffEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    enumUserStaffEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumUserStaffEntity.name = name;
  }
  return enumUserStaffEntity;
}

Map<String, dynamic> $EnumUserStaffEntityToJson(EnumUserStaffEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EnumUserStaffEntityExtension on EnumUserStaffEntity {
  EnumUserStaffEntity copyWith({
    int? id,
    String? name,
  }) {
    return EnumUserStaffEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}