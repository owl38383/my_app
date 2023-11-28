import 'dart:convert';

import 'package:my_app/common/entitys/infos/infos.dart';
import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/device_detail_entity.g.dart';

@JsonSerializable()
class DeviceDetailEntity {
  @JSONField(name: "info_device_controller")
  InfoDeviceControllerEntity? infoDeviceController;
  @JSONField(name: "info_device_component")
  InfoDeviceComponentEntity? infoDeviceComponent;
  @JSONField(name: "info_device")
  InfoDeviceEntity? infoDevice;
  @JSONField(name: "info_building")
  InfoBuildingEntity? infoBuilding;
  @JSONField(name: "info_area")
  InfoAreaEntity? infoArea;
  @JSONField(name: "info_floor")
  InfoFloorEntity? infoFloor;
  @JSONField(name: "info_things_compos")
  InfoThingsComposEntity? infoThingsCompos;
  @JSONField(name: "info_system")
  InfoSystemEntity? infoSystem;
  @JSONField(name: "info_sense")
  List<dynamic>? infoSense = [];
  @JSONField(name: "info_device_dtu")
  InfoDeviceDtuEntity? infoDeviceDtu;
  @JSONField(name: "info_location")
  InfoLocationEntity? infoLocation;
  @JSONField(name: "info_company")
  InfoCompanyEntity? infoCompany;
  @JSONField(name: "info_things_shilter")
  InfoThingsShilterEntity? infoThingsShilter;

  DeviceDetailEntity();

  factory DeviceDetailEntity.fromJson(Map<String, dynamic> json) => $DeviceDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $DeviceDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
