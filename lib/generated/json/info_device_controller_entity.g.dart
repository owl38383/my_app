import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_device_controller_entity.dart';

InfoDeviceControllerEntity $InfoDeviceControllerEntityFromJson(Map<String, dynamic> json) {
  final InfoDeviceControllerEntity infoDeviceControllerEntity = InfoDeviceControllerEntity();
  final String? controllerId = jsonConvert.convert<String>(json['controller_id']);
  if (controllerId != null) {
    infoDeviceControllerEntity.controllerId = controllerId;
  }
  final String? controllerNo = jsonConvert.convert<String>(json['controller_no']);
  if (controllerNo != null) {
    infoDeviceControllerEntity.controllerNo = controllerNo;
  }
  final String? dtuId = jsonConvert.convert<String>(json['dtu_id']);
  if (dtuId != null) {
    infoDeviceControllerEntity.dtuId = dtuId;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    infoDeviceControllerEntity.networkingDate = networkingDate;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoDeviceControllerEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoDeviceControllerEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoDeviceControllerEntity.createrId = createrId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoDeviceControllerEntity.isDel = isDel;
  }
  return infoDeviceControllerEntity;
}

Map<String, dynamic> $InfoDeviceControllerEntityToJson(InfoDeviceControllerEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['controller_id'] = entity.controllerId;
  data['controller_no'] = entity.controllerNo;
  data['dtu_id'] = entity.dtuId;
  data['networking_date'] = entity.networkingDate;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['is_del'] = entity.isDel;
  return data;
}

extension InfoDeviceControllerEntityExtension on InfoDeviceControllerEntity {
  InfoDeviceControllerEntity copyWith({
    String? controllerId,
    String? controllerNo,
    String? dtuId,
    String? networkingDate,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? isDel,
  }) {
    return InfoDeviceControllerEntity()
      ..controllerId = controllerId ?? this.controllerId
      ..controllerNo = controllerNo ?? this.controllerNo
      ..dtuId = dtuId ?? this.dtuId
      ..networkingDate = networkingDate ?? this.networkingDate
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..isDel = isDel ?? this.isDel;
  }
}