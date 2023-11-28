import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_device_transmit_mode_entity.dart';

EnumDeviceTransmitModeEntity $EnumDeviceTransmitModeEntityFromJson(Map<String, dynamic> json) {
  final EnumDeviceTransmitModeEntity enumDeviceTransmitModeEntity = EnumDeviceTransmitModeEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    enumDeviceTransmitModeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumDeviceTransmitModeEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumDeviceTransmitModeEntity.engName = engName;
  }
  final String? isShow = jsonConvert.convert<String>(json['is_show']);
  if (isShow != null) {
    enumDeviceTransmitModeEntity.isShow = isShow;
  }
  return enumDeviceTransmitModeEntity;
}

Map<String, dynamic> $EnumDeviceTransmitModeEntityToJson(EnumDeviceTransmitModeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['is_show'] = entity.isShow;
  return data;
}

extension EnumDeviceTransmitModeEntityExtension on EnumDeviceTransmitModeEntity {
  EnumDeviceTransmitModeEntity copyWith({
    String? id,
    String? name,
    String? engName,
    String? isShow,
  }) {
    return EnumDeviceTransmitModeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..isShow = isShow ?? this.isShow;
  }
}