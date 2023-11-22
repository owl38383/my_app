import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/event_list_home_page_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/event_list_home_page_entity.g.dart';

@JsonSerializable()
class EventListHomePageEntity {
	late int code = 0;
	late String msg = '';
	@JSONField(name: "eng_msg")
	late String engMsg = '';
	late EventListHomePageData data;

	EventListHomePageEntity();

	factory EventListHomePageEntity.fromJson(Map<String, dynamic> json) => $EventListHomePageEntityFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageData {
	late List<EventListHomePageDataList> list = [];
	late int total = 0;

	EventListHomePageData();

	factory EventListHomePageData.fromJson(Map<String, dynamic> json) => $EventListHomePageDataFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataList {
	@JSONField(name: "rt_event_confirm")
	late EventListHomePageDataListRtEventConfirm rtEventConfirm;
	late EventListHomePageDataListLocation location;

	EventListHomePageDataList();

	factory EventListHomePageDataList.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirm {
	@JSONField(name: "event_id")
	late String eventId = '';
	late String uuid = '';
	@JSONField(name: "thing_id")
	late String thingId = '';
	@JSONField(name: "thing_type")
	late String thingType = '';
	@JSONField(name: "start_time")
	late String startTime = '';
	@JSONField(name: "accept_time")
	late String acceptTime = '';
	@JSONField(name: "accept_end_time")
	late String acceptEndTime = '';
	@JSONField(name: "deal_result")
	late String dealResult = '';
	@JSONField(name: "accept_take_time")
	late String acceptTakeTime = '';
	@JSONField(name: "confirm_user_id")
	late String confirmUserId = '';
	@JSONField(name: "confirm_user_name")
	late String confirmUserName = '';
	@JSONField(name: "enum_device_operation")
	late EventListHomePageDataListRtEventConfirmEnumDeviceOperation enumDeviceOperation;
	@JSONField(name: "enum_device_class")
	late EventListHomePageDataListRtEventConfirmEnumDeviceClass enumDeviceClass;
	@JSONField(name: "enum_device_type")
	late EventListHomePageDataListRtEventConfirmEnumDeviceType enumDeviceType;
	@JSONField(name: "enum_device_model")
	late EventListHomePageDataListRtEventConfirmEnumDeviceModel enumDeviceModel;
	@JSONField(name: "enum_device_status")
	late EventListHomePageDataListRtEventConfirmEnumDeviceStatus enumDeviceStatus;
	@JSONField(name: "enum_confirm_type")
	late EventListHomePageDataListRtEventConfirmEnumConfirmType enumConfirmType;
	@JSONField(name: "confirm_desc")
	late String confirmDesc = '';
	@JSONField(name: "center_feedback_time")
	late String centerFeedbackTime = '';
	@JSONField(name: "center_operator_name")
	late String centerOperatorName = '';
	@JSONField(name: "center_id")
	late String centerId = '';
	@JSONField(name: "company_id")
	late String companyId = '';
	@JSONField(name: "system_id")
	late String systemId = '';
	@JSONField(name: "dtu_id")
	late String dtuId = '';
	@JSONField(name: "controller_id")
	late String controllerId = '';
	@JSONField(name: "equipment_id")
	late String equipmentId = '';
	@JSONField(name: "building_id")
	late String buildingId = '';
	@JSONField(name: "update_time")
	late String updateTime = '';
	@JSONField(name: "create_time")
	late String createTime = '';
	@JSONField(name: "creater_id")
	late String createrId = '';
	@JSONField(name: "loop_number")
	late String loopNumber = '';
	@JSONField(name: "component_number")
	late String componentNumber = '';
	@JSONField(name: "component_code")
	late String componentCode = '';
	late String value = '';
	@JSONField(name: "enum_analog_type")
	late EventListHomePageDataListRtEventConfirmEnumAnalogType enumAnalogType;
	@JSONField(name: "enum_confirm_method")
	late EventListHomePageDataListRtEventConfirmEnumConfirmMethod enumConfirmMethod;
	@JSONField(name: "enum_confirm_result")
	late EventListHomePageDataListRtEventConfirmEnumConfirmResult enumConfirmResult;
	@JSONField(name: "enum_confirm_reason")
	late EventListHomePageDataListRtEventConfirmEnumConfirmReason enumConfirmReason;
	@JSONField(name: "company_name")
	late String companyName = '';

	EventListHomePageDataListRtEventConfirm();

	factory EventListHomePageDataListRtEventConfirm.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumDeviceOperation {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "cmd_model")
	late String cmdModel = '';
	@JSONField(name: "cmd_code")
	dynamic cmdCode;
	dynamic desc;

	EventListHomePageDataListRtEventConfirmEnumDeviceOperation();

	factory EventListHomePageDataListRtEventConfirmEnumDeviceOperation.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumDeviceOperationFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumDeviceOperationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumDeviceClass {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "class_type")
	late String classType = '';
	@JSONField(name: "is_used")
	late String isUsed = '';
	@JSONField(name: "dtu_flag")
	late String dtuFlag = '';
	@JSONField(name: "component_flag")
	late String componentFlag = '';

	EventListHomePageDataListRtEventConfirmEnumDeviceClass();

	factory EventListHomePageDataListRtEventConfirmEnumDeviceClass.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumDeviceClassFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumDeviceClassToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumDeviceType {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "enum_device_class")
	late String enumDeviceClass = '';
	@JSONField(name: "default_system_type")
	late String defaultSystemType = '';
	@JSONField(name: "is_st")
	late String isSt = '';
	@JSONField(name: "is_used")
	late String isUsed = '';
	@JSONField(name: "icon_class")
	late String iconClass = '';

	EventListHomePageDataListRtEventConfirmEnumDeviceType();

	factory EventListHomePageDataListRtEventConfirmEnumDeviceType.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumDeviceTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumDeviceTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumDeviceModel {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "model_code")
	late String modelCode = '';
	late String brand = '';
	@JSONField(name: "thing_type")
	late String thingType = '';
	@JSONField(name: "enum_device_class")
	late String enumDeviceClass = '';
	@JSONField(name: "enum_device_type")
	late String enumDeviceType = '';
	@JSONField(name: "enum_device_brand")
	late String enumDeviceBrand = '';
	late String manufacturer = '';
	@JSONField(name: "alive_time")
	late String aliveTime = '';
	@JSONField(name: "ext_json")
	late String extJson = '';
	@JSONField(name: "is_used")
	late String isUsed = '';
	@JSONField(name: "is_need_protocol")
	late String isNeedProtocol = '';
	late String tags = '';
	@JSONField(name: "is_support_command")
	late String isSupportCommand = '';

	EventListHomePageDataListRtEventConfirmEnumDeviceModel();

	factory EventListHomePageDataListRtEventConfirmEnumDeviceModel.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumDeviceModelFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumDeviceModelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumDeviceStatus {
	late String id = '';
	@JSONField(name: "thing_type")
	late String thingType = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "short_name")
	late String shortName = '';
	@JSONField(name: "eng_short_name")
	late String engShortName = '';
	@JSONField(name: "status_category")
	late String statusCategory = '';

	EventListHomePageDataListRtEventConfirmEnumDeviceStatus();

	factory EventListHomePageDataListRtEventConfirmEnumDeviceStatus.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumDeviceStatusFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumDeviceStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumConfirmType {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	EventListHomePageDataListRtEventConfirmEnumConfirmType();

	factory EventListHomePageDataListRtEventConfirmEnumConfirmType.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumConfirmTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumConfirmTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumAnalogType {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	late String unit = '';
	@JSONField(name: "unit_cn")
	late String unitCn = '';
	@JSONField(name: "lower_limit")
	late String lowerLimit = '';
	@JSONField(name: "upper_limit")
	late String upperLimit = '';
	@JSONField(name: "smallest_unit")
	late String smallestUnit = '';
	@JSONField(name: "is_st")
	late String isSt = '';

	EventListHomePageDataListRtEventConfirmEnumAnalogType();

	factory EventListHomePageDataListRtEventConfirmEnumAnalogType.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumAnalogTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumAnalogTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumConfirmMethod {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	EventListHomePageDataListRtEventConfirmEnumConfirmMethod();

	factory EventListHomePageDataListRtEventConfirmEnumConfirmMethod.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumConfirmMethodFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumConfirmMethodToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumConfirmResult {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	EventListHomePageDataListRtEventConfirmEnumConfirmResult();

	factory EventListHomePageDataListRtEventConfirmEnumConfirmResult.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumConfirmResultFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumConfirmResultToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListRtEventConfirmEnumConfirmReason {
	late String id = '';
	@JSONField(name: "status_category")
	late String statusCategory = '';
	@JSONField(name: "enum_confirm_type")
	late String enumConfirmType = '';
	@JSONField(name: "enum_device_type")
	late String enumDeviceType = '';
	@JSONField(name: "enum_device_model")
	late String enumDeviceModel = '';
	late String reason = '';

	EventListHomePageDataListRtEventConfirmEnumConfirmReason();

	factory EventListHomePageDataListRtEventConfirmEnumConfirmReason.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListRtEventConfirmEnumConfirmReasonFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListRtEventConfirmEnumConfirmReasonToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListLocation {
	@JSONField(name: "device_id")
	late String deviceId = '';
	@JSONField(name: "device_thing_type")
	late String deviceThingType = '';
	@JSONField(name: "simple_id")
	late String simpleId = '';
	@JSONField(name: "device_name")
	late String deviceName = '';
	@JSONField(name: "device_type")
	late String deviceType = '';
	@JSONField(name: "enum_device_status")
	late EventListHomePageDataListLocationEnumDeviceStatus enumDeviceStatus;
	@JSONField(name: "device_type_icon_class")
	late String deviceTypeIconClass = '';
	@JSONField(name: "device_model")
	late String deviceModel = '';
	@JSONField(name: "device_class")
	late String deviceClass = '';
	@JSONField(name: "last_active_time")
	late String lastActiveTime = '';
	@JSONField(name: "networking_date")
	late String networkingDate = '';
	@JSONField(name: "device_model_name")
	late String deviceModelName = '';
	@JSONField(name: "device_type_name")
	late String deviceTypeName = '';
	@JSONField(name: "device_class_name")
	late String deviceClassName = '';
	@JSONField(name: "company_id")
	late String companyId = '';
	@JSONField(name: "company_address")
	late String companyAddress = '';
	@JSONField(name: "company_name")
	late String companyName = '';
	@JSONField(name: "enum_position_type")
	late EventListHomePageDataListLocationEnumPositionType enumPositionType;
	@JSONField(name: "building_id")
	late String buildingId = '';
	@JSONField(name: "building_name")
	late String buildingName = '';
	@JSONField(name: "floor_id")
	late String floorId = '';
	@JSONField(name: "floor_name")
	late String floorName = '';
	@JSONField(name: "file_id")
	late String fileId = '';
	@JSONField(name: "area_id")
	late String areaId = '';
	@JSONField(name: "area_name")
	late String areaName = '';
	late String specific = '';
	late String x = '';
	late String y = '';
	@JSONField(name: "absolute_path")
	late String absolutePath = '';

	EventListHomePageDataListLocation();

	factory EventListHomePageDataListLocation.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListLocationFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListLocationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListLocationEnumDeviceStatus {
	late String id = '';
	@JSONField(name: "thing_type")
	late String thingType = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';
	@JSONField(name: "short_name")
	late String shortName = '';
	@JSONField(name: "eng_short_name")
	late String engShortName = '';
	@JSONField(name: "status_category")
	late String statusCategory = '';

	EventListHomePageDataListLocationEnumDeviceStatus();

	factory EventListHomePageDataListLocationEnumDeviceStatus.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListLocationEnumDeviceStatusFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListLocationEnumDeviceStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventListHomePageDataListLocationEnumPositionType {
	late String id = '';
	late String name = '';
	@JSONField(name: "eng_name")
	late String engName = '';

	EventListHomePageDataListLocationEnumPositionType();

	factory EventListHomePageDataListLocationEnumPositionType.fromJson(Map<String, dynamic> json) => $EventListHomePageDataListLocationEnumPositionTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventListHomePageDataListLocationEnumPositionTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}