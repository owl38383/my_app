import 'dart:convert';

import 'package:my_app/common/entitys/device/device_detail_entity.dart';
import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/device_list_entity.g.dart';

@JsonSerializable()
class DeviceListEntity {
  int total = 0;
  List<DeviceDetailEntity> list = [];

  DeviceListEntity();

  factory DeviceListEntity.fromJson(Map<String, dynamic> json) => $DeviceListEntityFromJson(json);

  Map<String, dynamic> toJson() => $DeviceListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
