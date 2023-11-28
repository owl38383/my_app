import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_user_alarm_mode_entity.dart';

EnumUserAlarmModeEntity $EnumUserAlarmModeEntityFromJson(Map<String, dynamic> json) {
  final EnumUserAlarmModeEntity enumUserAlarmModeEntity = EnumUserAlarmModeEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    enumUserAlarmModeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumUserAlarmModeEntity.name = name;
  }
  return enumUserAlarmModeEntity;
}

Map<String, dynamic> $EnumUserAlarmModeEntityToJson(EnumUserAlarmModeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EnumUserAlarmModeEntityExtension on EnumUserAlarmModeEntity {
  EnumUserAlarmModeEntity copyWith({
    int? id,
    String? name,
  }) {
    return EnumUserAlarmModeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}