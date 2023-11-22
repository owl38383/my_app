import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/event/event_list_home_page_entity.dart';

EventListHomePageEntity $EventListHomePageEntityFromJson(Map<String, dynamic> json) {
  final EventListHomePageEntity eventListHomePageEntity = EventListHomePageEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    eventListHomePageEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    eventListHomePageEntity.msg = msg;
  }
  final String? engMsg = jsonConvert.convert<String>(json['eng_msg']);
  if (engMsg != null) {
    eventListHomePageEntity.engMsg = engMsg;
  }
  final EventListHomePageData? data = jsonConvert.convert<EventListHomePageData>(json['data']);
  if (data != null) {
    eventListHomePageEntity.data = data;
  }
  return eventListHomePageEntity;
}

Map<String, dynamic> $EventListHomePageEntityToJson(EventListHomePageEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['eng_msg'] = entity.engMsg;
  data['data'] = entity.data.toJson();
  return data;
}

extension EventListHomePageEntityExtension on EventListHomePageEntity {
  EventListHomePageEntity copyWith({
    int? code,
    String? msg,
    String? engMsg,
    EventListHomePageData? data,
  }) {
    return EventListHomePageEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..engMsg = engMsg ?? this.engMsg
      ..data = data ?? this.data;
  }
}

EventListHomePageData $EventListHomePageDataFromJson(Map<String, dynamic> json) {
  final EventListHomePageData eventListHomePageData = EventListHomePageData();
  final List<EventListHomePageDataList>? list = (json['list'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<EventListHomePageDataList>(e) as EventListHomePageDataList).toList();
  if (list != null) {
    eventListHomePageData.list = list;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    eventListHomePageData.total = total;
  }
  return eventListHomePageData;
}

Map<String, dynamic> $EventListHomePageDataToJson(EventListHomePageData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['list'] = entity.list.map((v) => v.toJson()).toList();
  data['total'] = entity.total;
  return data;
}

extension EventListHomePageDataExtension on EventListHomePageData {
  EventListHomePageData copyWith({
    List<EventListHomePageDataList>? list,
    int? total,
  }) {
    return EventListHomePageData()
      ..list = list ?? this.list
      ..total = total ?? this.total;
  }
}

EventListHomePageDataList $EventListHomePageDataListFromJson(Map<String, dynamic> json) {
  final EventListHomePageDataList eventListHomePageDataList = EventListHomePageDataList();
  final EventListHomePageDataListRtEventConfirm? rtEventConfirm = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirm>(json['rt_event_confirm']);
  if (rtEventConfirm != null) {
    eventListHomePageDataList.rtEventConfirm = rtEventConfirm;
  }
  final EventListHomePageDataListLocation? location = jsonConvert.convert<EventListHomePageDataListLocation>(
      json['location']);
  if (location != null) {
    eventListHomePageDataList.location = location;
  }
  return eventListHomePageDataList;
}

Map<String, dynamic> $EventListHomePageDataListToJson(EventListHomePageDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rt_event_confirm'] = entity.rtEventConfirm.toJson();
  data['location'] = entity.location.toJson();
  return data;
}

extension EventListHomePageDataListExtension on EventListHomePageDataList {
  EventListHomePageDataList copyWith({
    EventListHomePageDataListRtEventConfirm? rtEventConfirm,
    EventListHomePageDataListLocation? location,
  }) {
    return EventListHomePageDataList()
      ..rtEventConfirm = rtEventConfirm ?? this.rtEventConfirm
      ..location = location ?? this.location;
  }
}

EventListHomePageDataListRtEventConfirm $EventListHomePageDataListRtEventConfirmFromJson(Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirm eventListHomePageDataListRtEventConfirm = EventListHomePageDataListRtEventConfirm();
  final String? eventId = jsonConvert.convert<String>(json['event_id']);
  if (eventId != null) {
    eventListHomePageDataListRtEventConfirm.eventId = eventId;
  }
  final String? uuid = jsonConvert.convert<String>(json['uuid']);
  if (uuid != null) {
    eventListHomePageDataListRtEventConfirm.uuid = uuid;
  }
  final String? thingId = jsonConvert.convert<String>(json['thing_id']);
  if (thingId != null) {
    eventListHomePageDataListRtEventConfirm.thingId = thingId;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    eventListHomePageDataListRtEventConfirm.thingType = thingType;
  }
  final String? startTime = jsonConvert.convert<String>(json['start_time']);
  if (startTime != null) {
    eventListHomePageDataListRtEventConfirm.startTime = startTime;
  }
  final String? acceptTime = jsonConvert.convert<String>(json['accept_time']);
  if (acceptTime != null) {
    eventListHomePageDataListRtEventConfirm.acceptTime = acceptTime;
  }
  final String? acceptEndTime = jsonConvert.convert<String>(json['accept_end_time']);
  if (acceptEndTime != null) {
    eventListHomePageDataListRtEventConfirm.acceptEndTime = acceptEndTime;
  }
  final String? dealResult = jsonConvert.convert<String>(json['deal_result']);
  if (dealResult != null) {
    eventListHomePageDataListRtEventConfirm.dealResult = dealResult;
  }
  final String? acceptTakeTime = jsonConvert.convert<String>(json['accept_take_time']);
  if (acceptTakeTime != null) {
    eventListHomePageDataListRtEventConfirm.acceptTakeTime = acceptTakeTime;
  }
  final String? confirmUserId = jsonConvert.convert<String>(json['confirm_user_id']);
  if (confirmUserId != null) {
    eventListHomePageDataListRtEventConfirm.confirmUserId = confirmUserId;
  }
  final String? confirmUserName = jsonConvert.convert<String>(json['confirm_user_name']);
  if (confirmUserName != null) {
    eventListHomePageDataListRtEventConfirm.confirmUserName = confirmUserName;
  }
  final EventListHomePageDataListRtEventConfirmEnumDeviceOperation? enumDeviceOperation = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumDeviceOperation>(json['enum_device_operation']);
  if (enumDeviceOperation != null) {
    eventListHomePageDataListRtEventConfirm.enumDeviceOperation = enumDeviceOperation;
  }
  final EventListHomePageDataListRtEventConfirmEnumDeviceClass? enumDeviceClass = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumDeviceClass>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    eventListHomePageDataListRtEventConfirm.enumDeviceClass = enumDeviceClass;
  }
  final EventListHomePageDataListRtEventConfirmEnumDeviceType? enumDeviceType = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumDeviceType>(json['enum_device_type']);
  if (enumDeviceType != null) {
    eventListHomePageDataListRtEventConfirm.enumDeviceType = enumDeviceType;
  }
  final EventListHomePageDataListRtEventConfirmEnumDeviceModel? enumDeviceModel = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumDeviceModel>(json['enum_device_model']);
  if (enumDeviceModel != null) {
    eventListHomePageDataListRtEventConfirm.enumDeviceModel = enumDeviceModel;
  }
  final EventListHomePageDataListRtEventConfirmEnumDeviceStatus? enumDeviceStatus = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumDeviceStatus>(json['enum_device_status']);
  if (enumDeviceStatus != null) {
    eventListHomePageDataListRtEventConfirm.enumDeviceStatus = enumDeviceStatus;
  }
  final EventListHomePageDataListRtEventConfirmEnumConfirmType? enumConfirmType = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumConfirmType>(json['enum_confirm_type']);
  if (enumConfirmType != null) {
    eventListHomePageDataListRtEventConfirm.enumConfirmType = enumConfirmType;
  }
  final String? confirmDesc = jsonConvert.convert<String>(json['confirm_desc']);
  if (confirmDesc != null) {
    eventListHomePageDataListRtEventConfirm.confirmDesc = confirmDesc;
  }
  final String? centerFeedbackTime = jsonConvert.convert<String>(json['center_feedback_time']);
  if (centerFeedbackTime != null) {
    eventListHomePageDataListRtEventConfirm.centerFeedbackTime = centerFeedbackTime;
  }
  final String? centerOperatorName = jsonConvert.convert<String>(json['center_operator_name']);
  if (centerOperatorName != null) {
    eventListHomePageDataListRtEventConfirm.centerOperatorName = centerOperatorName;
  }
  final String? centerId = jsonConvert.convert<String>(json['center_id']);
  if (centerId != null) {
    eventListHomePageDataListRtEventConfirm.centerId = centerId;
  }
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    eventListHomePageDataListRtEventConfirm.companyId = companyId;
  }
  final String? systemId = jsonConvert.convert<String>(json['system_id']);
  if (systemId != null) {
    eventListHomePageDataListRtEventConfirm.systemId = systemId;
  }
  final String? dtuId = jsonConvert.convert<String>(json['dtu_id']);
  if (dtuId != null) {
    eventListHomePageDataListRtEventConfirm.dtuId = dtuId;
  }
  final String? controllerId = jsonConvert.convert<String>(json['controller_id']);
  if (controllerId != null) {
    eventListHomePageDataListRtEventConfirm.controllerId = controllerId;
  }
  final String? equipmentId = jsonConvert.convert<String>(json['equipment_id']);
  if (equipmentId != null) {
    eventListHomePageDataListRtEventConfirm.equipmentId = equipmentId;
  }
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    eventListHomePageDataListRtEventConfirm.buildingId = buildingId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    eventListHomePageDataListRtEventConfirm.updateTime = updateTime;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    eventListHomePageDataListRtEventConfirm.createTime = createTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    eventListHomePageDataListRtEventConfirm.createrId = createrId;
  }
  final String? loopNumber = jsonConvert.convert<String>(json['loop_number']);
  if (loopNumber != null) {
    eventListHomePageDataListRtEventConfirm.loopNumber = loopNumber;
  }
  final String? componentNumber = jsonConvert.convert<String>(json['component_number']);
  if (componentNumber != null) {
    eventListHomePageDataListRtEventConfirm.componentNumber = componentNumber;
  }
  final String? componentCode = jsonConvert.convert<String>(json['component_code']);
  if (componentCode != null) {
    eventListHomePageDataListRtEventConfirm.componentCode = componentCode;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    eventListHomePageDataListRtEventConfirm.value = value;
  }
  final EventListHomePageDataListRtEventConfirmEnumAnalogType? enumAnalogType = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumAnalogType>(json['enum_analog_type']);
  if (enumAnalogType != null) {
    eventListHomePageDataListRtEventConfirm.enumAnalogType = enumAnalogType;
  }
  final EventListHomePageDataListRtEventConfirmEnumConfirmMethod? enumConfirmMethod = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumConfirmMethod>(json['enum_confirm_method']);
  if (enumConfirmMethod != null) {
    eventListHomePageDataListRtEventConfirm.enumConfirmMethod = enumConfirmMethod;
  }
  final EventListHomePageDataListRtEventConfirmEnumConfirmResult? enumConfirmResult = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumConfirmResult>(json['enum_confirm_result']);
  if (enumConfirmResult != null) {
    eventListHomePageDataListRtEventConfirm.enumConfirmResult = enumConfirmResult;
  }
  final EventListHomePageDataListRtEventConfirmEnumConfirmReason? enumConfirmReason = jsonConvert.convert<
      EventListHomePageDataListRtEventConfirmEnumConfirmReason>(json['enum_confirm_reason']);
  if (enumConfirmReason != null) {
    eventListHomePageDataListRtEventConfirm.enumConfirmReason = enumConfirmReason;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    eventListHomePageDataListRtEventConfirm.companyName = companyName;
  }
  return eventListHomePageDataListRtEventConfirm;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmToJson(EventListHomePageDataListRtEventConfirm entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['event_id'] = entity.eventId;
  data['uuid'] = entity.uuid;
  data['thing_id'] = entity.thingId;
  data['thing_type'] = entity.thingType;
  data['start_time'] = entity.startTime;
  data['accept_time'] = entity.acceptTime;
  data['accept_end_time'] = entity.acceptEndTime;
  data['deal_result'] = entity.dealResult;
  data['accept_take_time'] = entity.acceptTakeTime;
  data['confirm_user_id'] = entity.confirmUserId;
  data['confirm_user_name'] = entity.confirmUserName;
  data['enum_device_operation'] = entity.enumDeviceOperation.toJson();
  data['enum_device_class'] = entity.enumDeviceClass.toJson();
  data['enum_device_type'] = entity.enumDeviceType.toJson();
  data['enum_device_model'] = entity.enumDeviceModel.toJson();
  data['enum_device_status'] = entity.enumDeviceStatus.toJson();
  data['enum_confirm_type'] = entity.enumConfirmType.toJson();
  data['confirm_desc'] = entity.confirmDesc;
  data['center_feedback_time'] = entity.centerFeedbackTime;
  data['center_operator_name'] = entity.centerOperatorName;
  data['center_id'] = entity.centerId;
  data['company_id'] = entity.companyId;
  data['system_id'] = entity.systemId;
  data['dtu_id'] = entity.dtuId;
  data['controller_id'] = entity.controllerId;
  data['equipment_id'] = entity.equipmentId;
  data['building_id'] = entity.buildingId;
  data['update_time'] = entity.updateTime;
  data['create_time'] = entity.createTime;
  data['creater_id'] = entity.createrId;
  data['loop_number'] = entity.loopNumber;
  data['component_number'] = entity.componentNumber;
  data['component_code'] = entity.componentCode;
  data['value'] = entity.value;
  data['enum_analog_type'] = entity.enumAnalogType.toJson();
  data['enum_confirm_method'] = entity.enumConfirmMethod.toJson();
  data['enum_confirm_result'] = entity.enumConfirmResult.toJson();
  data['enum_confirm_reason'] = entity.enumConfirmReason.toJson();
  data['company_name'] = entity.companyName;
  return data;
}

extension EventListHomePageDataListRtEventConfirmExtension on EventListHomePageDataListRtEventConfirm {
  EventListHomePageDataListRtEventConfirm copyWith({
    String? eventId,
    String? uuid,
    String? thingId,
    String? thingType,
    String? startTime,
    String? acceptTime,
    String? acceptEndTime,
    String? dealResult,
    String? acceptTakeTime,
    String? confirmUserId,
    String? confirmUserName,
    EventListHomePageDataListRtEventConfirmEnumDeviceOperation? enumDeviceOperation,
    EventListHomePageDataListRtEventConfirmEnumDeviceClass? enumDeviceClass,
    EventListHomePageDataListRtEventConfirmEnumDeviceType? enumDeviceType,
    EventListHomePageDataListRtEventConfirmEnumDeviceModel? enumDeviceModel,
    EventListHomePageDataListRtEventConfirmEnumDeviceStatus? enumDeviceStatus,
    EventListHomePageDataListRtEventConfirmEnumConfirmType? enumConfirmType,
    String? confirmDesc,
    String? centerFeedbackTime,
    String? centerOperatorName,
    String? centerId,
    String? companyId,
    String? systemId,
    String? dtuId,
    String? controllerId,
    String? equipmentId,
    String? buildingId,
    String? updateTime,
    String? createTime,
    String? createrId,
    String? loopNumber,
    String? componentNumber,
    String? componentCode,
    String? value,
    EventListHomePageDataListRtEventConfirmEnumAnalogType? enumAnalogType,
    EventListHomePageDataListRtEventConfirmEnumConfirmMethod? enumConfirmMethod,
    EventListHomePageDataListRtEventConfirmEnumConfirmResult? enumConfirmResult,
    EventListHomePageDataListRtEventConfirmEnumConfirmReason? enumConfirmReason,
    String? companyName,
  }) {
    return EventListHomePageDataListRtEventConfirm()
      ..eventId = eventId ?? this.eventId
      ..uuid = uuid ?? this.uuid
      ..thingId = thingId ?? this.thingId
      ..thingType = thingType ?? this.thingType
      ..startTime = startTime ?? this.startTime
      ..acceptTime = acceptTime ?? this.acceptTime
      ..acceptEndTime = acceptEndTime ?? this.acceptEndTime
      ..dealResult = dealResult ?? this.dealResult
      ..acceptTakeTime = acceptTakeTime ?? this.acceptTakeTime
      ..confirmUserId = confirmUserId ?? this.confirmUserId
      ..confirmUserName = confirmUserName ?? this.confirmUserName
      ..enumDeviceOperation = enumDeviceOperation ?? this.enumDeviceOperation
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceModel = enumDeviceModel ?? this.enumDeviceModel
      ..enumDeviceStatus = enumDeviceStatus ?? this.enumDeviceStatus
      ..enumConfirmType = enumConfirmType ?? this.enumConfirmType
      ..confirmDesc = confirmDesc ?? this.confirmDesc
      ..centerFeedbackTime = centerFeedbackTime ?? this.centerFeedbackTime
      ..centerOperatorName = centerOperatorName ?? this.centerOperatorName
      ..centerId = centerId ?? this.centerId
      ..companyId = companyId ?? this.companyId
      ..systemId = systemId ?? this.systemId
      ..dtuId = dtuId ?? this.dtuId
      ..controllerId = controllerId ?? this.controllerId
      ..equipmentId = equipmentId ?? this.equipmentId
      ..buildingId = buildingId ?? this.buildingId
      ..updateTime = updateTime ?? this.updateTime
      ..createTime = createTime ?? this.createTime
      ..createrId = createrId ?? this.createrId
      ..loopNumber = loopNumber ?? this.loopNumber
      ..componentNumber = componentNumber ?? this.componentNumber
      ..componentCode = componentCode ?? this.componentCode
      ..value = value ?? this.value
      ..enumAnalogType = enumAnalogType ?? this.enumAnalogType
      ..enumConfirmMethod = enumConfirmMethod ?? this.enumConfirmMethod
      ..enumConfirmResult = enumConfirmResult ?? this.enumConfirmResult
      ..enumConfirmReason = enumConfirmReason ?? this.enumConfirmReason
      ..companyName = companyName ?? this.companyName;
  }
}

EventListHomePageDataListRtEventConfirmEnumDeviceOperation $EventListHomePageDataListRtEventConfirmEnumDeviceOperationFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumDeviceOperation eventListHomePageDataListRtEventConfirmEnumDeviceOperation = EventListHomePageDataListRtEventConfirmEnumDeviceOperation();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.engName = engName;
  }
  final String? cmdModel = jsonConvert.convert<String>(json['cmd_model']);
  if (cmdModel != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.cmdModel = cmdModel;
  }
  final dynamic cmdCode = json['cmd_code'];
  if (cmdCode != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.cmdCode = cmdCode;
  }
  final dynamic desc = json['desc'];
  if (desc != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceOperation.desc = desc;
  }
  return eventListHomePageDataListRtEventConfirmEnumDeviceOperation;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumDeviceOperationToJson(
    EventListHomePageDataListRtEventConfirmEnumDeviceOperation entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['cmd_model'] = entity.cmdModel;
  data['cmd_code'] = entity.cmdCode;
  data['desc'] = entity.desc;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumDeviceOperationExtension on EventListHomePageDataListRtEventConfirmEnumDeviceOperation {
  EventListHomePageDataListRtEventConfirmEnumDeviceOperation copyWith({
    String? id,
    String? name,
    String? engName,
    String? cmdModel,
    dynamic cmdCode,
    dynamic desc,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumDeviceOperation()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..cmdModel = cmdModel ?? this.cmdModel
      ..cmdCode = cmdCode ?? this.cmdCode
      ..desc = desc ?? this.desc;
  }
}

EventListHomePageDataListRtEventConfirmEnumDeviceClass $EventListHomePageDataListRtEventConfirmEnumDeviceClassFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumDeviceClass eventListHomePageDataListRtEventConfirmEnumDeviceClass = EventListHomePageDataListRtEventConfirmEnumDeviceClass();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.engName = engName;
  }
  final String? classType = jsonConvert.convert<String>(json['class_type']);
  if (classType != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.classType = classType;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.isUsed = isUsed;
  }
  final String? dtuFlag = jsonConvert.convert<String>(json['dtu_flag']);
  if (dtuFlag != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.dtuFlag = dtuFlag;
  }
  final String? componentFlag = jsonConvert.convert<String>(json['component_flag']);
  if (componentFlag != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceClass.componentFlag = componentFlag;
  }
  return eventListHomePageDataListRtEventConfirmEnumDeviceClass;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumDeviceClassToJson(
    EventListHomePageDataListRtEventConfirmEnumDeviceClass entity) {
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

extension EventListHomePageDataListRtEventConfirmEnumDeviceClassExtension on EventListHomePageDataListRtEventConfirmEnumDeviceClass {
  EventListHomePageDataListRtEventConfirmEnumDeviceClass copyWith({
    String? id,
    String? name,
    String? engName,
    String? classType,
    String? isUsed,
    String? dtuFlag,
    String? componentFlag,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumDeviceClass()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..classType = classType ?? this.classType
      ..isUsed = isUsed ?? this.isUsed
      ..dtuFlag = dtuFlag ?? this.dtuFlag
      ..componentFlag = componentFlag ?? this.componentFlag;
  }
}

EventListHomePageDataListRtEventConfirmEnumDeviceType $EventListHomePageDataListRtEventConfirmEnumDeviceTypeFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumDeviceType eventListHomePageDataListRtEventConfirmEnumDeviceType = EventListHomePageDataListRtEventConfirmEnumDeviceType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.engName = engName;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.enumDeviceClass = enumDeviceClass;
  }
  final String? defaultSystemType = jsonConvert.convert<String>(json['default_system_type']);
  if (defaultSystemType != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.defaultSystemType = defaultSystemType;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.isSt = isSt;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.isUsed = isUsed;
  }
  final String? iconClass = jsonConvert.convert<String>(json['icon_class']);
  if (iconClass != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceType.iconClass = iconClass;
  }
  return eventListHomePageDataListRtEventConfirmEnumDeviceType;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumDeviceTypeToJson(
    EventListHomePageDataListRtEventConfirmEnumDeviceType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['default_system_type'] = entity.defaultSystemType;
  data['is_st'] = entity.isSt;
  data['is_used'] = entity.isUsed;
  data['icon_class'] = entity.iconClass;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumDeviceTypeExtension on EventListHomePageDataListRtEventConfirmEnumDeviceType {
  EventListHomePageDataListRtEventConfirmEnumDeviceType copyWith({
    String? id,
    String? name,
    String? engName,
    String? enumDeviceClass,
    String? defaultSystemType,
    String? isSt,
    String? isUsed,
    String? iconClass,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumDeviceType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..defaultSystemType = defaultSystemType ?? this.defaultSystemType
      ..isSt = isSt ?? this.isSt
      ..isUsed = isUsed ?? this.isUsed
      ..iconClass = iconClass ?? this.iconClass;
  }
}

EventListHomePageDataListRtEventConfirmEnumDeviceModel $EventListHomePageDataListRtEventConfirmEnumDeviceModelFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumDeviceModel eventListHomePageDataListRtEventConfirmEnumDeviceModel = EventListHomePageDataListRtEventConfirmEnumDeviceModel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.engName = engName;
  }
  final String? modelCode = jsonConvert.convert<String>(json['model_code']);
  if (modelCode != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.modelCode = modelCode;
  }
  final String? brand = jsonConvert.convert<String>(json['brand']);
  if (brand != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.brand = brand;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.thingType = thingType;
  }
  final String? enumDeviceClass = jsonConvert.convert<String>(json['enum_device_class']);
  if (enumDeviceClass != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.enumDeviceClass = enumDeviceClass;
  }
  final String? enumDeviceType = jsonConvert.convert<String>(json['enum_device_type']);
  if (enumDeviceType != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.enumDeviceType = enumDeviceType;
  }
  final String? enumDeviceBrand = jsonConvert.convert<String>(json['enum_device_brand']);
  if (enumDeviceBrand != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.enumDeviceBrand = enumDeviceBrand;
  }
  final String? manufacturer = jsonConvert.convert<String>(json['manufacturer']);
  if (manufacturer != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.manufacturer = manufacturer;
  }
  final String? aliveTime = jsonConvert.convert<String>(json['alive_time']);
  if (aliveTime != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.aliveTime = aliveTime;
  }
  final String? extJson = jsonConvert.convert<String>(json['ext_json']);
  if (extJson != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.extJson = extJson;
  }
  final String? isUsed = jsonConvert.convert<String>(json['is_used']);
  if (isUsed != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.isUsed = isUsed;
  }
  final String? isNeedProtocol = jsonConvert.convert<String>(json['is_need_protocol']);
  if (isNeedProtocol != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.isNeedProtocol = isNeedProtocol;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.tags = tags;
  }
  final String? isSupportCommand = jsonConvert.convert<String>(json['is_support_command']);
  if (isSupportCommand != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceModel.isSupportCommand = isSupportCommand;
  }
  return eventListHomePageDataListRtEventConfirmEnumDeviceModel;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumDeviceModelToJson(
    EventListHomePageDataListRtEventConfirmEnumDeviceModel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['model_code'] = entity.modelCode;
  data['brand'] = entity.brand;
  data['thing_type'] = entity.thingType;
  data['enum_device_class'] = entity.enumDeviceClass;
  data['enum_device_type'] = entity.enumDeviceType;
  data['enum_device_brand'] = entity.enumDeviceBrand;
  data['manufacturer'] = entity.manufacturer;
  data['alive_time'] = entity.aliveTime;
  data['ext_json'] = entity.extJson;
  data['is_used'] = entity.isUsed;
  data['is_need_protocol'] = entity.isNeedProtocol;
  data['tags'] = entity.tags;
  data['is_support_command'] = entity.isSupportCommand;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumDeviceModelExtension on EventListHomePageDataListRtEventConfirmEnumDeviceModel {
  EventListHomePageDataListRtEventConfirmEnumDeviceModel copyWith({
    String? id,
    String? name,
    String? engName,
    String? modelCode,
    String? brand,
    String? thingType,
    String? enumDeviceClass,
    String? enumDeviceType,
    String? enumDeviceBrand,
    String? manufacturer,
    String? aliveTime,
    String? extJson,
    String? isUsed,
    String? isNeedProtocol,
    String? tags,
    String? isSupportCommand,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumDeviceModel()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..modelCode = modelCode ?? this.modelCode
      ..brand = brand ?? this.brand
      ..thingType = thingType ?? this.thingType
      ..enumDeviceClass = enumDeviceClass ?? this.enumDeviceClass
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceBrand = enumDeviceBrand ?? this.enumDeviceBrand
      ..manufacturer = manufacturer ?? this.manufacturer
      ..aliveTime = aliveTime ?? this.aliveTime
      ..extJson = extJson ?? this.extJson
      ..isUsed = isUsed ?? this.isUsed
      ..isNeedProtocol = isNeedProtocol ?? this.isNeedProtocol
      ..tags = tags ?? this.tags
      ..isSupportCommand = isSupportCommand ?? this.isSupportCommand;
  }
}

EventListHomePageDataListRtEventConfirmEnumDeviceStatus $EventListHomePageDataListRtEventConfirmEnumDeviceStatusFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumDeviceStatus eventListHomePageDataListRtEventConfirmEnumDeviceStatus = EventListHomePageDataListRtEventConfirmEnumDeviceStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.id = id;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.engName = engName;
  }
  final String? shortName = jsonConvert.convert<String>(json['short_name']);
  if (shortName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.shortName = shortName;
  }
  final String? engShortName = jsonConvert.convert<String>(json['eng_short_name']);
  if (engShortName != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.engShortName = engShortName;
  }
  final String? statusCategory = jsonConvert.convert<String>(json['status_category']);
  if (statusCategory != null) {
    eventListHomePageDataListRtEventConfirmEnumDeviceStatus.statusCategory = statusCategory;
  }
  return eventListHomePageDataListRtEventConfirmEnumDeviceStatus;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumDeviceStatusToJson(
    EventListHomePageDataListRtEventConfirmEnumDeviceStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['short_name'] = entity.shortName;
  data['eng_short_name'] = entity.engShortName;
  data['status_category'] = entity.statusCategory;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumDeviceStatusExtension on EventListHomePageDataListRtEventConfirmEnumDeviceStatus {
  EventListHomePageDataListRtEventConfirmEnumDeviceStatus copyWith({
    String? id,
    String? thingType,
    String? name,
    String? engName,
    String? shortName,
    String? engShortName,
    String? statusCategory,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumDeviceStatus()
      ..id = id ?? this.id
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..shortName = shortName ?? this.shortName
      ..engShortName = engShortName ?? this.engShortName
      ..statusCategory = statusCategory ?? this.statusCategory;
  }
}

EventListHomePageDataListRtEventConfirmEnumConfirmType $EventListHomePageDataListRtEventConfirmEnumConfirmTypeFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumConfirmType eventListHomePageDataListRtEventConfirmEnumConfirmType = EventListHomePageDataListRtEventConfirmEnumConfirmType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmType.engName = engName;
  }
  return eventListHomePageDataListRtEventConfirmEnumConfirmType;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumConfirmTypeToJson(
    EventListHomePageDataListRtEventConfirmEnumConfirmType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumConfirmTypeExtension on EventListHomePageDataListRtEventConfirmEnumConfirmType {
  EventListHomePageDataListRtEventConfirmEnumConfirmType copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumConfirmType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

EventListHomePageDataListRtEventConfirmEnumAnalogType $EventListHomePageDataListRtEventConfirmEnumAnalogTypeFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumAnalogType eventListHomePageDataListRtEventConfirmEnumAnalogType = EventListHomePageDataListRtEventConfirmEnumAnalogType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.engName = engName;
  }
  final String? unit = jsonConvert.convert<String>(json['unit']);
  if (unit != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.unit = unit;
  }
  final String? unitCn = jsonConvert.convert<String>(json['unit_cn']);
  if (unitCn != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.unitCn = unitCn;
  }
  final String? lowerLimit = jsonConvert.convert<String>(json['lower_limit']);
  if (lowerLimit != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.lowerLimit = lowerLimit;
  }
  final String? upperLimit = jsonConvert.convert<String>(json['upper_limit']);
  if (upperLimit != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.upperLimit = upperLimit;
  }
  final String? smallestUnit = jsonConvert.convert<String>(json['smallest_unit']);
  if (smallestUnit != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.smallestUnit = smallestUnit;
  }
  final String? isSt = jsonConvert.convert<String>(json['is_st']);
  if (isSt != null) {
    eventListHomePageDataListRtEventConfirmEnumAnalogType.isSt = isSt;
  }
  return eventListHomePageDataListRtEventConfirmEnumAnalogType;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumAnalogTypeToJson(
    EventListHomePageDataListRtEventConfirmEnumAnalogType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['unit'] = entity.unit;
  data['unit_cn'] = entity.unitCn;
  data['lower_limit'] = entity.lowerLimit;
  data['upper_limit'] = entity.upperLimit;
  data['smallest_unit'] = entity.smallestUnit;
  data['is_st'] = entity.isSt;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumAnalogTypeExtension on EventListHomePageDataListRtEventConfirmEnumAnalogType {
  EventListHomePageDataListRtEventConfirmEnumAnalogType copyWith({
    String? id,
    String? name,
    String? engName,
    String? unit,
    String? unitCn,
    String? lowerLimit,
    String? upperLimit,
    String? smallestUnit,
    String? isSt,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumAnalogType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..unit = unit ?? this.unit
      ..unitCn = unitCn ?? this.unitCn
      ..lowerLimit = lowerLimit ?? this.lowerLimit
      ..upperLimit = upperLimit ?? this.upperLimit
      ..smallestUnit = smallestUnit ?? this.smallestUnit
      ..isSt = isSt ?? this.isSt;
  }
}

EventListHomePageDataListRtEventConfirmEnumConfirmMethod $EventListHomePageDataListRtEventConfirmEnumConfirmMethodFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumConfirmMethod eventListHomePageDataListRtEventConfirmEnumConfirmMethod = EventListHomePageDataListRtEventConfirmEnumConfirmMethod();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmMethod.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmMethod.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmMethod.engName = engName;
  }
  return eventListHomePageDataListRtEventConfirmEnumConfirmMethod;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumConfirmMethodToJson(
    EventListHomePageDataListRtEventConfirmEnumConfirmMethod entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumConfirmMethodExtension on EventListHomePageDataListRtEventConfirmEnumConfirmMethod {
  EventListHomePageDataListRtEventConfirmEnumConfirmMethod copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumConfirmMethod()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

EventListHomePageDataListRtEventConfirmEnumConfirmResult $EventListHomePageDataListRtEventConfirmEnumConfirmResultFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumConfirmResult eventListHomePageDataListRtEventConfirmEnumConfirmResult = EventListHomePageDataListRtEventConfirmEnumConfirmResult();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmResult.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmResult.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmResult.engName = engName;
  }
  return eventListHomePageDataListRtEventConfirmEnumConfirmResult;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumConfirmResultToJson(
    EventListHomePageDataListRtEventConfirmEnumConfirmResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumConfirmResultExtension on EventListHomePageDataListRtEventConfirmEnumConfirmResult {
  EventListHomePageDataListRtEventConfirmEnumConfirmResult copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumConfirmResult()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

EventListHomePageDataListRtEventConfirmEnumConfirmReason $EventListHomePageDataListRtEventConfirmEnumConfirmReasonFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListRtEventConfirmEnumConfirmReason eventListHomePageDataListRtEventConfirmEnumConfirmReason = EventListHomePageDataListRtEventConfirmEnumConfirmReason();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.id = id;
  }
  final String? statusCategory = jsonConvert.convert<String>(json['status_category']);
  if (statusCategory != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.statusCategory = statusCategory;
  }
  final String? enumConfirmType = jsonConvert.convert<String>(json['enum_confirm_type']);
  if (enumConfirmType != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.enumConfirmType = enumConfirmType;
  }
  final String? enumDeviceType = jsonConvert.convert<String>(json['enum_device_type']);
  if (enumDeviceType != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.enumDeviceType = enumDeviceType;
  }
  final String? enumDeviceModel = jsonConvert.convert<String>(json['enum_device_model']);
  if (enumDeviceModel != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.enumDeviceModel = enumDeviceModel;
  }
  final String? reason = jsonConvert.convert<String>(json['reason']);
  if (reason != null) {
    eventListHomePageDataListRtEventConfirmEnumConfirmReason.reason = reason;
  }
  return eventListHomePageDataListRtEventConfirmEnumConfirmReason;
}

Map<String, dynamic> $EventListHomePageDataListRtEventConfirmEnumConfirmReasonToJson(
    EventListHomePageDataListRtEventConfirmEnumConfirmReason entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status_category'] = entity.statusCategory;
  data['enum_confirm_type'] = entity.enumConfirmType;
  data['enum_device_type'] = entity.enumDeviceType;
  data['enum_device_model'] = entity.enumDeviceModel;
  data['reason'] = entity.reason;
  return data;
}

extension EventListHomePageDataListRtEventConfirmEnumConfirmReasonExtension on EventListHomePageDataListRtEventConfirmEnumConfirmReason {
  EventListHomePageDataListRtEventConfirmEnumConfirmReason copyWith({
    String? id,
    String? statusCategory,
    String? enumConfirmType,
    String? enumDeviceType,
    String? enumDeviceModel,
    String? reason,
  }) {
    return EventListHomePageDataListRtEventConfirmEnumConfirmReason()
      ..id = id ?? this.id
      ..statusCategory = statusCategory ?? this.statusCategory
      ..enumConfirmType = enumConfirmType ?? this.enumConfirmType
      ..enumDeviceType = enumDeviceType ?? this.enumDeviceType
      ..enumDeviceModel = enumDeviceModel ?? this.enumDeviceModel
      ..reason = reason ?? this.reason;
  }
}

EventListHomePageDataListLocation $EventListHomePageDataListLocationFromJson(Map<String, dynamic> json) {
  final EventListHomePageDataListLocation eventListHomePageDataListLocation = EventListHomePageDataListLocation();
  final String? deviceId = jsonConvert.convert<String>(json['device_id']);
  if (deviceId != null) {
    eventListHomePageDataListLocation.deviceId = deviceId;
  }
  final String? deviceThingType = jsonConvert.convert<String>(json['device_thing_type']);
  if (deviceThingType != null) {
    eventListHomePageDataListLocation.deviceThingType = deviceThingType;
  }
  final String? simpleId = jsonConvert.convert<String>(json['simple_id']);
  if (simpleId != null) {
    eventListHomePageDataListLocation.simpleId = simpleId;
  }
  final String? deviceName = jsonConvert.convert<String>(json['device_name']);
  if (deviceName != null) {
    eventListHomePageDataListLocation.deviceName = deviceName;
  }
  final String? deviceType = jsonConvert.convert<String>(json['device_type']);
  if (deviceType != null) {
    eventListHomePageDataListLocation.deviceType = deviceType;
  }
  final EventListHomePageDataListLocationEnumDeviceStatus? enumDeviceStatus = jsonConvert.convert<
      EventListHomePageDataListLocationEnumDeviceStatus>(json['enum_device_status']);
  if (enumDeviceStatus != null) {
    eventListHomePageDataListLocation.enumDeviceStatus = enumDeviceStatus;
  }
  final String? deviceTypeIconClass = jsonConvert.convert<String>(json['device_type_icon_class']);
  if (deviceTypeIconClass != null) {
    eventListHomePageDataListLocation.deviceTypeIconClass = deviceTypeIconClass;
  }
  final String? deviceModel = jsonConvert.convert<String>(json['device_model']);
  if (deviceModel != null) {
    eventListHomePageDataListLocation.deviceModel = deviceModel;
  }
  final String? deviceClass = jsonConvert.convert<String>(json['device_class']);
  if (deviceClass != null) {
    eventListHomePageDataListLocation.deviceClass = deviceClass;
  }
  final String? lastActiveTime = jsonConvert.convert<String>(json['last_active_time']);
  if (lastActiveTime != null) {
    eventListHomePageDataListLocation.lastActiveTime = lastActiveTime;
  }
  final String? networkingDate = jsonConvert.convert<String>(json['networking_date']);
  if (networkingDate != null) {
    eventListHomePageDataListLocation.networkingDate = networkingDate;
  }
  final String? deviceModelName = jsonConvert.convert<String>(json['device_model_name']);
  if (deviceModelName != null) {
    eventListHomePageDataListLocation.deviceModelName = deviceModelName;
  }
  final String? deviceTypeName = jsonConvert.convert<String>(json['device_type_name']);
  if (deviceTypeName != null) {
    eventListHomePageDataListLocation.deviceTypeName = deviceTypeName;
  }
  final String? deviceClassName = jsonConvert.convert<String>(json['device_class_name']);
  if (deviceClassName != null) {
    eventListHomePageDataListLocation.deviceClassName = deviceClassName;
  }
  final String? companyId = jsonConvert.convert<String>(json['company_id']);
  if (companyId != null) {
    eventListHomePageDataListLocation.companyId = companyId;
  }
  final String? companyAddress = jsonConvert.convert<String>(json['company_address']);
  if (companyAddress != null) {
    eventListHomePageDataListLocation.companyAddress = companyAddress;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    eventListHomePageDataListLocation.companyName = companyName;
  }
  final EventListHomePageDataListLocationEnumPositionType? enumPositionType = jsonConvert.convert<
      EventListHomePageDataListLocationEnumPositionType>(json['enum_position_type']);
  if (enumPositionType != null) {
    eventListHomePageDataListLocation.enumPositionType = enumPositionType;
  }
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    eventListHomePageDataListLocation.buildingId = buildingId;
  }
  final String? buildingName = jsonConvert.convert<String>(json['building_name']);
  if (buildingName != null) {
    eventListHomePageDataListLocation.buildingName = buildingName;
  }
  final String? floorId = jsonConvert.convert<String>(json['floor_id']);
  if (floorId != null) {
    eventListHomePageDataListLocation.floorId = floorId;
  }
  final String? floorName = jsonConvert.convert<String>(json['floor_name']);
  if (floorName != null) {
    eventListHomePageDataListLocation.floorName = floorName;
  }
  final String? fileId = jsonConvert.convert<String>(json['file_id']);
  if (fileId != null) {
    eventListHomePageDataListLocation.fileId = fileId;
  }
  final String? areaId = jsonConvert.convert<String>(json['area_id']);
  if (areaId != null) {
    eventListHomePageDataListLocation.areaId = areaId;
  }
  final String? areaName = jsonConvert.convert<String>(json['area_name']);
  if (areaName != null) {
    eventListHomePageDataListLocation.areaName = areaName;
  }
  final String? specific = jsonConvert.convert<String>(json['specific']);
  if (specific != null) {
    eventListHomePageDataListLocation.specific = specific;
  }
  final String? x = jsonConvert.convert<String>(json['x']);
  if (x != null) {
    eventListHomePageDataListLocation.x = x;
  }
  final String? y = jsonConvert.convert<String>(json['y']);
  if (y != null) {
    eventListHomePageDataListLocation.y = y;
  }
  final String? absolutePath = jsonConvert.convert<String>(json['absolute_path']);
  if (absolutePath != null) {
    eventListHomePageDataListLocation.absolutePath = absolutePath;
  }
  return eventListHomePageDataListLocation;
}

Map<String, dynamic> $EventListHomePageDataListLocationToJson(EventListHomePageDataListLocation entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['device_id'] = entity.deviceId;
  data['device_thing_type'] = entity.deviceThingType;
  data['simple_id'] = entity.simpleId;
  data['device_name'] = entity.deviceName;
  data['device_type'] = entity.deviceType;
  data['enum_device_status'] = entity.enumDeviceStatus.toJson();
  data['device_type_icon_class'] = entity.deviceTypeIconClass;
  data['device_model'] = entity.deviceModel;
  data['device_class'] = entity.deviceClass;
  data['last_active_time'] = entity.lastActiveTime;
  data['networking_date'] = entity.networkingDate;
  data['device_model_name'] = entity.deviceModelName;
  data['device_type_name'] = entity.deviceTypeName;
  data['device_class_name'] = entity.deviceClassName;
  data['company_id'] = entity.companyId;
  data['company_address'] = entity.companyAddress;
  data['company_name'] = entity.companyName;
  data['enum_position_type'] = entity.enumPositionType.toJson();
  data['building_id'] = entity.buildingId;
  data['building_name'] = entity.buildingName;
  data['floor_id'] = entity.floorId;
  data['floor_name'] = entity.floorName;
  data['file_id'] = entity.fileId;
  data['area_id'] = entity.areaId;
  data['area_name'] = entity.areaName;
  data['specific'] = entity.specific;
  data['x'] = entity.x;
  data['y'] = entity.y;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension EventListHomePageDataListLocationExtension on EventListHomePageDataListLocation {
  EventListHomePageDataListLocation copyWith({
    String? deviceId,
    String? deviceThingType,
    String? simpleId,
    String? deviceName,
    String? deviceType,
    EventListHomePageDataListLocationEnumDeviceStatus? enumDeviceStatus,
    String? deviceTypeIconClass,
    String? deviceModel,
    String? deviceClass,
    String? lastActiveTime,
    String? networkingDate,
    String? deviceModelName,
    String? deviceTypeName,
    String? deviceClassName,
    String? companyId,
    String? companyAddress,
    String? companyName,
    EventListHomePageDataListLocationEnumPositionType? enumPositionType,
    String? buildingId,
    String? buildingName,
    String? floorId,
    String? floorName,
    String? fileId,
    String? areaId,
    String? areaName,
    String? specific,
    String? x,
    String? y,
    String? absolutePath,
  }) {
    return EventListHomePageDataListLocation()
      ..deviceId = deviceId ?? this.deviceId
      ..deviceThingType = deviceThingType ?? this.deviceThingType
      ..simpleId = simpleId ?? this.simpleId
      ..deviceName = deviceName ?? this.deviceName
      ..deviceType = deviceType ?? this.deviceType
      ..enumDeviceStatus = enumDeviceStatus ?? this.enumDeviceStatus
      ..deviceTypeIconClass = deviceTypeIconClass ?? this.deviceTypeIconClass
      ..deviceModel = deviceModel ?? this.deviceModel
      ..deviceClass = deviceClass ?? this.deviceClass
      ..lastActiveTime = lastActiveTime ?? this.lastActiveTime
      ..networkingDate = networkingDate ?? this.networkingDate
      ..deviceModelName = deviceModelName ?? this.deviceModelName
      ..deviceTypeName = deviceTypeName ?? this.deviceTypeName
      ..deviceClassName = deviceClassName ?? this.deviceClassName
      ..companyId = companyId ?? this.companyId
      ..companyAddress = companyAddress ?? this.companyAddress
      ..companyName = companyName ?? this.companyName
      ..enumPositionType = enumPositionType ?? this.enumPositionType
      ..buildingId = buildingId ?? this.buildingId
      ..buildingName = buildingName ?? this.buildingName
      ..floorId = floorId ?? this.floorId
      ..floorName = floorName ?? this.floorName
      ..fileId = fileId ?? this.fileId
      ..areaId = areaId ?? this.areaId
      ..areaName = areaName ?? this.areaName
      ..specific = specific ?? this.specific
      ..x = x ?? this.x
      ..y = y ?? this.y
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}

EventListHomePageDataListLocationEnumDeviceStatus $EventListHomePageDataListLocationEnumDeviceStatusFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListLocationEnumDeviceStatus eventListHomePageDataListLocationEnumDeviceStatus = EventListHomePageDataListLocationEnumDeviceStatus();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.id = id;
  }
  final String? thingType = jsonConvert.convert<String>(json['thing_type']);
  if (thingType != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.thingType = thingType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.engName = engName;
  }
  final String? shortName = jsonConvert.convert<String>(json['short_name']);
  if (shortName != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.shortName = shortName;
  }
  final String? engShortName = jsonConvert.convert<String>(json['eng_short_name']);
  if (engShortName != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.engShortName = engShortName;
  }
  final String? statusCategory = jsonConvert.convert<String>(json['status_category']);
  if (statusCategory != null) {
    eventListHomePageDataListLocationEnumDeviceStatus.statusCategory = statusCategory;
  }
  return eventListHomePageDataListLocationEnumDeviceStatus;
}

Map<String, dynamic> $EventListHomePageDataListLocationEnumDeviceStatusToJson(
    EventListHomePageDataListLocationEnumDeviceStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['thing_type'] = entity.thingType;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['short_name'] = entity.shortName;
  data['eng_short_name'] = entity.engShortName;
  data['status_category'] = entity.statusCategory;
  return data;
}

extension EventListHomePageDataListLocationEnumDeviceStatusExtension on EventListHomePageDataListLocationEnumDeviceStatus {
  EventListHomePageDataListLocationEnumDeviceStatus copyWith({
    String? id,
    String? thingType,
    String? name,
    String? engName,
    String? shortName,
    String? engShortName,
    String? statusCategory,
  }) {
    return EventListHomePageDataListLocationEnumDeviceStatus()
      ..id = id ?? this.id
      ..thingType = thingType ?? this.thingType
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..shortName = shortName ?? this.shortName
      ..engShortName = engShortName ?? this.engShortName
      ..statusCategory = statusCategory ?? this.statusCategory;
  }
}

EventListHomePageDataListLocationEnumPositionType $EventListHomePageDataListLocationEnumPositionTypeFromJson(
    Map<String, dynamic> json) {
  final EventListHomePageDataListLocationEnumPositionType eventListHomePageDataListLocationEnumPositionType = EventListHomePageDataListLocationEnumPositionType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventListHomePageDataListLocationEnumPositionType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventListHomePageDataListLocationEnumPositionType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    eventListHomePageDataListLocationEnumPositionType.engName = engName;
  }
  return eventListHomePageDataListLocationEnumPositionType;
}

Map<String, dynamic> $EventListHomePageDataListLocationEnumPositionTypeToJson(
    EventListHomePageDataListLocationEnumPositionType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension EventListHomePageDataListLocationEnumPositionTypeExtension on EventListHomePageDataListLocationEnumPositionType {
  EventListHomePageDataListLocationEnumPositionType copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return EventListHomePageDataListLocationEnumPositionType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}