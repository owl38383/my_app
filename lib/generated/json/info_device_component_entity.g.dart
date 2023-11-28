import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_device_component_entity.dart';

InfoDeviceComponentEntity $InfoDeviceComponentEntityFromJson(Map<String, dynamic> json) {
  final InfoDeviceComponentEntity infoDeviceComponentEntity = InfoDeviceComponentEntity();
  final String? componentId = jsonConvert.convert<String>(json['component_id']);
  if (componentId != null) {
    infoDeviceComponentEntity.componentId = componentId;
  }
  final String? controllerId = jsonConvert.convert<String>(json['controller_id']);
  if (controllerId != null) {
    infoDeviceComponentEntity.controllerId = controllerId;
  }
  final String? dtuId = jsonConvert.convert<String>(json['dtu_id']);
  if (dtuId != null) {
    infoDeviceComponentEntity.dtuId = dtuId;
  }
  final String? loopNumber = jsonConvert.convert<String>(json['loop_number']);
  if (loopNumber != null) {
    infoDeviceComponentEntity.loopNumber = loopNumber;
  }
  final String? componentNumber = jsonConvert.convert<String>(json['component_number']);
  if (componentNumber != null) {
    infoDeviceComponentEntity.componentNumber = componentNumber;
  }
  final String? componentCode = jsonConvert.convert<String>(json['component_code']);
  if (componentCode != null) {
    infoDeviceComponentEntity.componentCode = componentCode;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    infoDeviceComponentEntity.networkingDate = networkingDate;
  }
  final String? extension = jsonConvert.convert<String>(json['extension']);
  if (extension != null) {
    infoDeviceComponentEntity.extension = extension;
  }
  final String? groupTransmission = jsonConvert.convert<String>(json['group_transmission']);
  if (groupTransmission != null) {
    infoDeviceComponentEntity.groupTransmission = groupTransmission;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoDeviceComponentEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoDeviceComponentEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoDeviceComponentEntity.createrId = createrId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoDeviceComponentEntity.isDel = isDel;
  }
  final String? controllerNo = jsonConvert.convert<String>(json['controller_no']);
  if (controllerNo != null) {
    infoDeviceComponentEntity.controllerNo = controllerNo;
  }
  return infoDeviceComponentEntity;
}

Map<String, dynamic> $InfoDeviceComponentEntityToJson(InfoDeviceComponentEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['component_id'] = entity.componentId;
  data['controller_id'] = entity.controllerId;
  data['dtu_id'] = entity.dtuId;
  data['loop_number'] = entity.loopNumber;
  data['component_number'] = entity.componentNumber;
  data['component_code'] = entity.componentCode;
  data['networking_date'] = entity.networkingDate;
  data['extension'] = entity.extension;
  data['group_transmission'] = entity.groupTransmission;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['is_del'] = entity.isDel;
  data['controller_no'] = entity.controllerNo;
  return data;
}

extension InfoDeviceComponentEntityExtension on InfoDeviceComponentEntity {
  InfoDeviceComponentEntity copyWith({
    String? componentId,
    String? controllerId,
    String? dtuId,
    String? loopNumber,
    String? componentNumber,
    String? componentCode,
    String? networkingDate,
    String? extension,
    String? groupTransmission,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? isDel,
    String? controllerNo,
  }) {
    return InfoDeviceComponentEntity()
      ..componentId = componentId ?? this.componentId
      ..controllerId = controllerId ?? this.controllerId
      ..dtuId = dtuId ?? this.dtuId
      ..loopNumber = loopNumber ?? this.loopNumber
      ..componentNumber = componentNumber ?? this.componentNumber
      ..componentCode = componentCode ?? this.componentCode
      ..networkingDate = networkingDate ?? this.networkingDate
      ..extension = extension ?? this.extension
      ..groupTransmission = groupTransmission ?? this.groupTransmission
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..isDel = isDel ?? this.isDel
      ..controllerNo = controllerNo ?? this.controllerNo;
  }
}