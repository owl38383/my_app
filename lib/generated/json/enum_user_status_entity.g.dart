import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_user_status_entity.dart';

EnumUserStatusEntity $EnumUserStatusEntityFromJson(Map<String, dynamic> json) {
  final EnumUserStatusEntity enumUserStatusEntity = EnumUserStatusEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    enumUserStatusEntity.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    enumUserStatusEntity.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    enumUserStatusEntity.engStatus = engStatus;
  }
  return enumUserStatusEntity;
}

Map<String, dynamic> $EnumUserStatusEntityToJson(EnumUserStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension EnumUserStatusEntityExtension on EnumUserStatusEntity {
  EnumUserStatusEntity copyWith({
    int? id,
    String? status,
    String? engStatus,
  }) {
    return EnumUserStatusEntity()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}