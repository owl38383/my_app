import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/device/device_detail_entity.dart';
import 'package:my_app/common/entitys/infos/infos.dart';


DeviceDetailEntity $DeviceDetailEntityFromJson(Map<String, dynamic> json) {
  final DeviceDetailEntity deviceDetailEntity = DeviceDetailEntity();
  final InfoDeviceControllerEntity? infoDeviceController = jsonConvert.convert<InfoDeviceControllerEntity>(
      json['info_device_controller']);
  if (infoDeviceController != null) {
    deviceDetailEntity.infoDeviceController = infoDeviceController;
  }
  final InfoDeviceComponentEntity? infoDeviceComponent = jsonConvert.convert<InfoDeviceComponentEntity>(
      json['info_device_component']);
  if (infoDeviceComponent != null) {
    deviceDetailEntity.infoDeviceComponent = infoDeviceComponent;
  }
  final InfoDeviceEntity? infoDevice = jsonConvert.convert<InfoDeviceEntity>(json['info_device']);
  if (infoDevice != null) {
    deviceDetailEntity.infoDevice = infoDevice;
  }
  final InfoBuildingEntity? infoBuilding = jsonConvert.convert<InfoBuildingEntity>(json['info_building']);
  if (infoBuilding != null) {
    deviceDetailEntity.infoBuilding = infoBuilding;
  }
  final InfoAreaEntity? infoArea = jsonConvert.convert<InfoAreaEntity>(json['info_area']);
  if (infoArea != null) {
    deviceDetailEntity.infoArea = infoArea;
  }
  final InfoFloorEntity? infoFloor = jsonConvert.convert<InfoFloorEntity>(json['info_floor']);
  if (infoFloor != null) {
    deviceDetailEntity.infoFloor = infoFloor;
  }
  final InfoThingsComposEntity? infoThingsCompos = jsonConvert.convert<InfoThingsComposEntity>(
      json['info_things_compos']);
  if (infoThingsCompos != null) {
    deviceDetailEntity.infoThingsCompos = infoThingsCompos;
  }
  final InfoSystemEntity? infoSystem = jsonConvert.convert<InfoSystemEntity>(json['info_system']);
  if (infoSystem != null) {
    deviceDetailEntity.infoSystem = infoSystem;
  }
  final List<dynamic>? infoSense = (json['info_sense'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (infoSense != null) {
    deviceDetailEntity.infoSense = infoSense;
  }
  final InfoDeviceDtuEntity? infoDeviceDtu = jsonConvert.convert<InfoDeviceDtuEntity>(json['info_device_dtu']);
  if (infoDeviceDtu != null) {
    deviceDetailEntity.infoDeviceDtu = infoDeviceDtu;
  }
  final InfoLocationEntity? infoLocation = jsonConvert.convert<InfoLocationEntity>(json['info_location']);
  if (infoLocation != null) {
    deviceDetailEntity.infoLocation = infoLocation;
  }
  final InfoCompanyEntity? infoCompany = jsonConvert.convert<InfoCompanyEntity>(json['info_company']);
  if (infoCompany != null) {
    deviceDetailEntity.infoCompany = infoCompany;
  }
  final InfoThingsShilterEntity? infoThingsShilter = jsonConvert.convert<InfoThingsShilterEntity>(
      json['info_things_shilter']);
  if (infoThingsShilter != null) {
    deviceDetailEntity.infoThingsShilter = infoThingsShilter;
  }
  return deviceDetailEntity;
}

Map<String, dynamic> $DeviceDetailEntityToJson(DeviceDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['info_device_controller'] = entity.infoDeviceController?.toJson();
  data['info_device_component'] = entity.infoDeviceComponent?.toJson();
  data['info_device'] = entity.infoDevice?.toJson();
  data['info_building'] = entity.infoBuilding?.toJson();
  data['info_area'] = entity.infoArea?.toJson();
  data['info_floor'] = entity.infoFloor?.toJson();
  data['info_things_compos'] = entity.infoThingsCompos?.toJson();
  data['info_system'] = entity.infoSystem?.toJson();
  data['info_sense'] = entity.infoSense;
  data['info_device_dtu'] = entity.infoDeviceDtu?.toJson();
  data['info_location'] = entity.infoLocation?.toJson();
  data['info_company'] = entity.infoCompany?.toJson();
  data['info_things_shilter'] = entity.infoThingsShilter?.toJson();
  return data;
}

extension DeviceDetailEntityExtension on DeviceDetailEntity {
  DeviceDetailEntity copyWith({
    InfoDeviceControllerEntity? infoDeviceController,
    InfoDeviceComponentEntity? infoDeviceComponent,
    InfoDeviceEntity? infoDevice,
    InfoBuildingEntity? infoBuilding,
    InfoAreaEntity? infoArea,
    InfoFloorEntity? infoFloor,
    InfoThingsComposEntity? infoThingsCompos,
    InfoSystemEntity? infoSystem,
    List<dynamic>? infoSense,
    InfoDeviceDtuEntity? infoDeviceDtu,
    InfoLocationEntity? infoLocation,
    InfoCompanyEntity? infoCompany,
    InfoThingsShilterEntity? infoThingsShilter,
  }) {
    return DeviceDetailEntity()
      ..infoDeviceController = infoDeviceController ?? this.infoDeviceController
      ..infoDeviceComponent = infoDeviceComponent ?? this.infoDeviceComponent
      ..infoDevice = infoDevice ?? this.infoDevice
      ..infoBuilding = infoBuilding ?? this.infoBuilding
      ..infoArea = infoArea ?? this.infoArea
      ..infoFloor = infoFloor ?? this.infoFloor
      ..infoThingsCompos = infoThingsCompos ?? this.infoThingsCompos
      ..infoSystem = infoSystem ?? this.infoSystem
      ..infoSense = infoSense ?? this.infoSense
      ..infoDeviceDtu = infoDeviceDtu ?? this.infoDeviceDtu
      ..infoLocation = infoLocation ?? this.infoLocation
      ..infoCompany = infoCompany ?? this.infoCompany
      ..infoThingsShilter = infoThingsShilter ?? this.infoThingsShilter;
  }
}