import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_class_entity.dart';

EnumDeviceClassEntity $EnumDeviceClassEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceClassEntity enumDeviceClassEntity = EnumDeviceClassEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceClassEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceClassEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceClassEntity.engName = engName;
  }
  final String? classType = jsonConvert.convert<String>(json['class_type']);
  if (classType != null) {
    enumDeviceClassEntity.classType = classType;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    enumDeviceClassEntity.isUsed = isUsed;
  }
  final String? dtuFlag = jsonConvert.convert<String>(json['dtu_flag']);
  if (dtuFlag != null) {
    enumDeviceClassEntity.dtuFlag = dtuFlag;
  }
  final String? componentFlag = jsonConvert.convert<String>(json['component_flag']);
  if (componentFlag != null) {
    enumDeviceClassEntity.componentFlag = componentFlag;
  }
  return enumDeviceClassEntity;
}

Map<String, dynamic> $EnumDeviceClassEntityToJson(EnumDeviceClassEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['class_type'] = entity.classType;
  data['is_used'] = entity.isUsed;
  data['dtu_flag'] = entity.dtuFlag;
  data['component_flag'] = entity.componentFlag;
  return data;
}

extension EnumDeviceClassEntityExtension on EnumDeviceClassEntity {
  EnumDeviceClassEntity copyWith({
    String? id,
    String? name,
    String? engName,
    String? classType,
    String? isUsed,
    String? dtuFlag,
    String? componentFlag,
  }) {
    return EnumDeviceClassEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..classType = classType ?? this.classType
      ..isUsed = isUsed ?? this.isUsed
      ..dtuFlag = dtuFlag ?? this.dtuFlag
      ..componentFlag = componentFlag ?? this.componentFlag;
  }
}