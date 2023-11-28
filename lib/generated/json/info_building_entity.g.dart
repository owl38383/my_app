import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_building_entity.dart';

InfoBuildingEntity $InfoBuildingEntityFromJson(Map<String, dynamic> json) {
  final InfoBuildingEntity infoBuildingEntity = InfoBuildingEntity();
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    infoBuildingEntity.buildingId = buildingId;
  }
  final String? buildingName = jsonConvert.convert<String>(json['building_name']);
  if (buildingName != null) {
    infoBuildingEntity.buildingName = buildingName;
  }
  final InfoBuildingEnumBuildingType? enumBuildingType = jsonConvert.convert<InfoBuildingEnumBuildingType>(
      json['enum_building_type']);
  if (enumBuildingType != null) {
    infoBuildingEntity.enumBuildingType = enumBuildingType;
  }
  final String? buildTime = jsonConvert.convert<String>(json['build_time']);
  if (buildTime != null) {
    infoBuildingEntity.buildTime = buildTime;
  }
  final InfoBuildingEnumBuildingProperty? enumBuildingProperty = jsonConvert.convert<InfoBuildingEnumBuildingProperty>(
      json['enum_building_property']);
  if (enumBuildingProperty != null) {
    infoBuildingEntity.enumBuildingProperty = enumBuildingProperty;
  }
  final InfoBuildingEnumBuildingFireLevel? enumBuildingFireLevel = jsonConvert.convert<
      InfoBuildingEnumBuildingFireLevel>(json['enum_building_fire_level']);
  if (enumBuildingFireLevel != null) {
    infoBuildingEntity.enumBuildingFireLevel = enumBuildingFireLevel;
  }
  final InfoBuildingEnumBuildingFireResistance? enumBuildingFireResistance = jsonConvert.convert<
      InfoBuildingEnumBuildingFireResistance>(json['enum_building_fire_resistance']);
  if (enumBuildingFireResistance != null) {
    infoBuildingEntity.enumBuildingFireResistance = enumBuildingFireResistance;
  }
  final InfoBuildingEnumBuildingStructure? enumBuildingStructure = jsonConvert.convert<
      InfoBuildingEnumBuildingStructure>(json['enum_building_structure']);
  if (enumBuildingStructure != null) {
    infoBuildingEntity.enumBuildingStructure = enumBuildingStructure;
  }
  final String? buildingHeight = jsonConvert.convert<String>(json['building_height']);
  if (buildingHeight != null) {
    infoBuildingEntity.buildingHeight = buildingHeight;
  }
  final String? buildingArea = jsonConvert.convert<String>(json['building_area']);
  if (buildingArea != null) {
    infoBuildingEntity.buildingArea = buildingArea;
  }
  final String? siteArea = jsonConvert.convert<String>(json['site_area']);
  if (siteArea != null) {
    infoBuildingEntity.siteArea = siteArea;
  }
  final String? normalFloorArea = jsonConvert.convert<String>(json['normal_floor_area']);
  if (normalFloorArea != null) {
    infoBuildingEntity.normalFloorArea = normalFloorArea;
  }
  final String? ongrounderFloors = jsonConvert.convert<String>(json['ongrounder_floors']);
  if (ongrounderFloors != null) {
    infoBuildingEntity.ongrounderFloors = ongrounderFloors;
  }
  final String? undergroundFloors = jsonConvert.convert<String>(json['underground_floors']);
  if (undergroundFloors != null) {
    infoBuildingEntity.undergroundFloors = undergroundFloors;
  }
  final String? ongrounderArea = jsonConvert.convert<String>(json['ongrounder_area']);
  if (ongrounderArea != null) {
    infoBuildingEntity.ongrounderArea = ongrounderArea;
  }
  final String? undergroundArea = jsonConvert.convert<String>(json['underground_area']);
  if (undergroundArea != null) {
    infoBuildingEntity.undergroundArea = undergroundArea;
  }
  final String? tunnelHeight = jsonConvert.convert<String>(json['tunnel_height']);
  if (tunnelHeight != null) {
    infoBuildingEntity.tunnelHeight = tunnelHeight;
  }
  final String? tunnelLength = jsonConvert.convert<String>(json['tunnel_length']);
  if (tunnelLength != null) {
    infoBuildingEntity.tunnelLength = tunnelLength;
  }
  final String? controlRoomLocation = jsonConvert.convert<String>(json['control_room_location']);
  if (controlRoomLocation != null) {
    infoBuildingEntity.controlRoomLocation = controlRoomLocation;
  }
  final String? refugeFloorCount = jsonConvert.convert<String>(json['refuge_floor_count']);
  if (refugeFloorCount != null) {
    infoBuildingEntity.refugeFloorCount = refugeFloorCount;
  }
  final String? refugeFloorArea = jsonConvert.convert<String>(json['refuge_floor_area']);
  if (refugeFloorArea != null) {
    infoBuildingEntity.refugeFloorArea = refugeFloorArea;
  }
  final String? refugeFloorLocation = jsonConvert.convert<String>(json['refuge_floor_location']);
  if (refugeFloorLocation != null) {
    infoBuildingEntity.refugeFloorLocation = refugeFloorLocation;
  }
  final String? exitCount = jsonConvert.convert<String>(json['exit_count']);
  if (exitCount != null) {
    infoBuildingEntity.exitCount = exitCount;
  }
  final String? exitLocation = jsonConvert.convert<String>(json['exit_location']);
  if (exitLocation != null) {
    infoBuildingEntity.exitLocation = exitLocation;
  }
  final String? exitForm = jsonConvert.convert<String>(json['exit_form']);
  if (exitForm != null) {
    infoBuildingEntity.exitForm = exitForm;
  }
  final String? fireElevatorCount = jsonConvert.convert<String>(json['fire_elevator_count']);
  if (fireElevatorCount != null) {
    infoBuildingEntity.fireElevatorCount = fireElevatorCount;
  }
  final String? fireElevatorWeight = jsonConvert.convert<String>(json['fire_elevator_weight']);
  if (fireElevatorWeight != null) {
    infoBuildingEntity.fireElevatorWeight = fireElevatorWeight;
  }
  final String? workingTimePopulation = jsonConvert.convert<String>(json['working_time_population']);
  if (workingTimePopulation != null) {
    infoBuildingEntity.workingTimePopulation = workingTimePopulation;
  }
  final String? maxPopulation = jsonConvert.convert<String>(json['max_population']);
  if (maxPopulation != null) {
    infoBuildingEntity.maxPopulation = maxPopulation;
  }
  final String? mainStorageName = jsonConvert.convert<String>(json['main_storage_name']);
  if (mainStorageName != null) {
    infoBuildingEntity.mainStorageName = mainStorageName;
  }
  final String? mainStorageCount = jsonConvert.convert<String>(json['main_storage_count']);
  if (mainStorageCount != null) {
    infoBuildingEntity.mainStorageCount = mainStorageCount;
  }
  final String? mainStorageNature = jsonConvert.convert<String>(json['main_storage_nature']);
  if (mainStorageNature != null) {
    infoBuildingEntity.mainStorageNature = mainStorageNature;
  }
  final String? mainStorageForm = jsonConvert.convert<String>(json['main_storage_form']);
  if (mainStorageForm != null) {
    infoBuildingEntity.mainStorageForm = mainStorageForm;
  }
  final String? mainStorageCapacity = jsonConvert.convert<String>(json['main_storage_capacity']);
  if (mainStorageCapacity != null) {
    infoBuildingEntity.mainStorageCapacity = mainStorageCapacity;
  }
  final String? mainStorageMaterial = jsonConvert.convert<String>(json['main_storage_material']);
  if (mainStorageMaterial != null) {
    infoBuildingEntity.mainStorageMaterial = mainStorageMaterial;
  }
  final String? mainStorageProduct = jsonConvert.convert<String>(json['main_storage_product']);
  if (mainStorageProduct != null) {
    infoBuildingEntity.mainStorageProduct = mainStorageProduct;
  }
  final String? neighborBuildingDesc = jsonConvert.convert<String>(json['neighbor_building_desc']);
  if (neighborBuildingDesc != null) {
    infoBuildingEntity.neighborBuildingDesc = neighborBuildingDesc;
  }
  final String? building3dGraph = jsonConvert.convert<String>(json['building_3d_graph']);
  if (building3dGraph != null) {
    infoBuildingEntity.building3dGraph = building3dGraph;
  }
  final String? buildingOutlookGraph = jsonConvert.convert<String>(json['building_outlook_graph']);
  if (buildingOutlookGraph != null) {
    infoBuildingEntity.buildingOutlookGraph = buildingOutlookGraph;
  }
  final String? equipment2dGraph = jsonConvert.convert<String>(json['equipment_2d_graph']);
  if (equipment2dGraph != null) {
    infoBuildingEntity.equipment2dGraph = equipment2dGraph;
  }
  final String? building2dGraph = jsonConvert.convert<String>(json['building_2d_graph']);
  if (building2dGraph != null) {
    infoBuildingEntity.building2dGraph = building2dGraph;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    infoBuildingEntity.companyName = companyName;
  }
  final String? controlRoomPhone = jsonConvert.convert<String>(json['control_room_phone']);
  if (controlRoomPhone != null) {
    infoBuildingEntity.controlRoomPhone = controlRoomPhone;
  }
  final String? controlRoomDescribe = jsonConvert.convert<String>(json['control_room_describe']);
  if (controlRoomDescribe != null) {
    infoBuildingEntity.controlRoomDescribe = controlRoomDescribe;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoBuildingEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoBuildingEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoBuildingEntity.createrId = createrId;
  }
  final String? indoormapId = jsonConvert.convert<String>(json['indoormap_id']);
  if (indoormapId != null) {
    infoBuildingEntity.indoormapId = indoormapId;
  }
  final String? subdistrictId = jsonConvert.convert<String>(json['subdistrict_id']);
  if (subdistrictId != null) {
    infoBuildingEntity.subdistrictId = subdistrictId;
  }
  final String? propertyManageCompanyName = jsonConvert.convert<String>(json['property_manage_company_name']);
  if (propertyManageCompanyName != null) {
    infoBuildingEntity.propertyManageCompanyName = propertyManageCompanyName;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoBuildingEntity.isDel = isDel;
  }
  final String? safetyResponsibilityName = jsonConvert.convert<String>(json['safety_responsibility_name']);
  if (safetyResponsibilityName != null) {
    infoBuildingEntity.safetyResponsibilityName = safetyResponsibilityName;
  }
  final String? safetyResponsibilityPhone = jsonConvert.convert<String>(json['safety_responsibility_phone']);
  if (safetyResponsibilityPhone != null) {
    infoBuildingEntity.safetyResponsibilityPhone = safetyResponsibilityPhone;
  }
  final String? safetyManagerName = jsonConvert.convert<String>(json['safety_manager_name']);
  if (safetyManagerName != null) {
    infoBuildingEntity.safetyManagerName = safetyManagerName;
  }
  final String? safetyManagerPhone = jsonConvert.convert<String>(json['safety_manager_phone']);
  if (safetyManagerPhone != null) {
    infoBuildingEntity.safetyManagerPhone = safetyManagerPhone;
  }
  final InfoBuildingCreater? creater = jsonConvert.convert<InfoBuildingCreater>(json['creater']);
  if (creater != null) {
    infoBuildingEntity.creater = creater;
  }
  return infoBuildingEntity;
}

Map<String, dynamic> $InfoBuildingEntityToJson(InfoBuildingEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['building_id'] = entity.buildingId;
  data['building_name'] = entity.buildingName;
  data['enum_building_type'] = entity.enumBuildingType?.toJson();
  data['build_time'] = entity.buildTime;
  data['enum_building_property'] = entity.enumBuildingProperty?.toJson();
  data['enum_building_fire_level'] = entity.enumBuildingFireLevel?.toJson();
  data['enum_building_fire_resistance'] = entity.enumBuildingFireResistance?.toJson();
  data['enum_building_structure'] = entity.enumBuildingStructure?.toJson();
  data['building_height'] = entity.buildingHeight;
  data['building_area'] = entity.buildingArea;
  data['site_area'] = entity.siteArea;
  data['normal_floor_area'] = entity.normalFloorArea;
  data['ongrounder_floors'] = entity.ongrounderFloors;
  data['underground_floors'] = entity.undergroundFloors;
  data['ongrounder_area'] = entity.ongrounderArea;
  data['underground_area'] = entity.undergroundArea;
  data['tunnel_height'] = entity.tunnelHeight;
  data['tunnel_length'] = entity.tunnelLength;
  data['control_room_location'] = entity.controlRoomLocation;
  data['refuge_floor_count'] = entity.refugeFloorCount;
  data['refuge_floor_area'] = entity.refugeFloorArea;
  data['refuge_floor_location'] = entity.refugeFloorLocation;
  data['exit_count'] = entity.exitCount;
  data['exit_location'] = entity.exitLocation;
  data['exit_form'] = entity.exitForm;
  data['fire_elevator_count'] = entity.fireElevatorCount;
  data['fire_elevator_weight'] = entity.fireElevatorWeight;
  data['working_time_population'] = entity.workingTimePopulation;
  data['max_population'] = entity.maxPopulation;
  data['main_storage_name'] = entity.mainStorageName;
  data['main_storage_count'] = entity.mainStorageCount;
  data['main_storage_nature'] = entity.mainStorageNature;
  data['main_storage_form'] = entity.mainStorageForm;
  data['main_storage_capacity'] = entity.mainStorageCapacity;
  data['main_storage_material'] = entity.mainStorageMaterial;
  data['main_storage_product'] = entity.mainStorageProduct;
  data['neighbor_building_desc'] = entity.neighborBuildingDesc;
  data['building_3d_graph'] = entity.building3dGraph;
  data['building_outlook_graph'] = entity.buildingOutlookGraph;
  data['equipment_2d_graph'] = entity.equipment2dGraph;
  data['building_2d_graph'] = entity.building2dGraph;
  data['company_name'] = entity.companyName;
  data['control_room_phone'] = entity.controlRoomPhone;
  data['control_room_describe'] = entity.controlRoomDescribe;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['indoormap_id'] = entity.indoormapId;
  data['subdistrict_id'] = entity.subdistrictId;
  data['property_manage_company_name'] = entity.propertyManageCompanyName;
  data['is_del'] = entity.isDel;
  data['safety_responsibility_name'] = entity.safetyResponsibilityName;
  data['safety_responsibility_phone'] = entity.safetyResponsibilityPhone;
  data['safety_manager_name'] = entity.safetyManagerName;
  data['safety_manager_phone'] = entity.safetyManagerPhone;
  data['creater'] = entity.creater?.toJson();
  return data;
}

extension InfoBuildingEntityExtension on InfoBuildingEntity {
  InfoBuildingEntity copyWith({
    String? buildingId,
    String? buildingName,
    InfoBuildingEnumBuildingType? enumBuildingType,
    String? buildTime,
    InfoBuildingEnumBuildingProperty? enumBuildingProperty,
    InfoBuildingEnumBuildingFireLevel? enumBuildingFireLevel,
    InfoBuildingEnumBuildingFireResistance? enumBuildingFireResistance,
    InfoBuildingEnumBuildingStructure? enumBuildingStructure,
    String? buildingHeight,
    String? buildingArea,
    String? siteArea,
    String? normalFloorArea,
    String? ongrounderFloors,
    String? undergroundFloors,
    String? ongrounderArea,
    String? undergroundArea,
    String? tunnelHeight,
    String? tunnelLength,
    String? controlRoomLocation,
    String? refugeFloorCount,
    String? refugeFloorArea,
    String? refugeFloorLocation,
    String? exitCount,
    String? exitLocation,
    String? exitForm,
    String? fireElevatorCount,
    String? fireElevatorWeight,
    String? workingTimePopulation,
    String? maxPopulation,
    String? mainStorageName,
    String? mainStorageCount,
    String? mainStorageNature,
    String? mainStorageForm,
    String? mainStorageCapacity,
    String? mainStorageMaterial,
    String? mainStorageProduct,
    String? neighborBuildingDesc,
    String? building3dGraph,
    String? buildingOutlookGraph,
    String? equipment2dGraph,
    String? building2dGraph,
    String? companyName,
    String? controlRoomPhone,
    String? controlRoomDescribe,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? indoormapId,
    String? subdistrictId,
    String? propertyManageCompanyName,
    String? isDel,
    String? safetyResponsibilityName,
    String? safetyResponsibilityPhone,
    String? safetyManagerName,
    String? safetyManagerPhone,
    InfoBuildingCreater? creater,
  }) {
    return InfoBuildingEntity()
      ..buildingId = buildingId ?? this.buildingId
      ..buildingName = buildingName ?? this.buildingName
      ..enumBuildingType = enumBuildingType ?? this.enumBuildingType
      ..buildTime = buildTime ?? this.buildTime
      ..enumBuildingProperty = enumBuildingProperty ?? this.enumBuildingProperty
      ..enumBuildingFireLevel = enumBuildingFireLevel ?? this.enumBuildingFireLevel
      ..enumBuildingFireResistance = enumBuildingFireResistance ?? this.enumBuildingFireResistance
      ..enumBuildingStructure = enumBuildingStructure ?? this.enumBuildingStructure
      ..buildingHeight = buildingHeight ?? this.buildingHeight
      ..buildingArea = buildingArea ?? this.buildingArea
      ..siteArea = siteArea ?? this.siteArea
      ..normalFloorArea = normalFloorArea ?? this.normalFloorArea
      ..ongrounderFloors = ongrounderFloors ?? this.ongrounderFloors
      ..undergroundFloors = undergroundFloors ?? this.undergroundFloors
      ..ongrounderArea = ongrounderArea ?? this.ongrounderArea
      ..undergroundArea = undergroundArea ?? this.undergroundArea
      ..tunnelHeight = tunnelHeight ?? this.tunnelHeight
      ..tunnelLength = tunnelLength ?? this.tunnelLength
      ..controlRoomLocation = controlRoomLocation ?? this.controlRoomLocation
      ..refugeFloorCount = refugeFloorCount ?? this.refugeFloorCount
      ..refugeFloorArea = refugeFloorArea ?? this.refugeFloorArea
      ..refugeFloorLocation = refugeFloorLocation ?? this.refugeFloorLocation
      ..exitCount = exitCount ?? this.exitCount
      ..exitLocation = exitLocation ?? this.exitLocation
      ..exitForm = exitForm ?? this.exitForm
      ..fireElevatorCount = fireElevatorCount ?? this.fireElevatorCount
      ..fireElevatorWeight = fireElevatorWeight ?? this.fireElevatorWeight
      ..workingTimePopulation = workingTimePopulation ?? this.workingTimePopulation
      ..maxPopulation = maxPopulation ?? this.maxPopulation
      ..mainStorageName = mainStorageName ?? this.mainStorageName
      ..mainStorageCount = mainStorageCount ?? this.mainStorageCount
      ..mainStorageNature = mainStorageNature ?? this.mainStorageNature
      ..mainStorageForm = mainStorageForm ?? this.mainStorageForm
      ..mainStorageCapacity = mainStorageCapacity ?? this.mainStorageCapacity
      ..mainStorageMaterial = mainStorageMaterial ?? this.mainStorageMaterial
      ..mainStorageProduct = mainStorageProduct ?? this.mainStorageProduct
      ..neighborBuildingDesc = neighborBuildingDesc ?? this.neighborBuildingDesc
      ..building3dGraph = building3dGraph ?? this.building3dGraph
      ..buildingOutlookGraph = buildingOutlookGraph ?? this.buildingOutlookGraph
      ..equipment2dGraph = equipment2dGraph ?? this.equipment2dGraph
      ..building2dGraph = building2dGraph ?? this.building2dGraph
      ..companyName = companyName ?? this.companyName
      ..controlRoomPhone = controlRoomPhone ?? this.controlRoomPhone
      ..controlRoomDescribe = controlRoomDescribe ?? this.controlRoomDescribe
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..indoormapId = indoormapId ?? this.indoormapId
      ..subdistrictId = subdistrictId ?? this.subdistrictId
      ..propertyManageCompanyName = propertyManageCompanyName ?? this.propertyManageCompanyName
      ..isDel = isDel ?? this.isDel
      ..safetyResponsibilityName = safetyResponsibilityName ?? this.safetyResponsibilityName
      ..safetyResponsibilityPhone = safetyResponsibilityPhone ?? this.safetyResponsibilityPhone
      ..safetyManagerName = safetyManagerName ?? this.safetyManagerName
      ..safetyManagerPhone = safetyManagerPhone ?? this.safetyManagerPhone
      ..creater = creater ?? this.creater;
  }
}

InfoBuildingEnumBuildingType $InfoBuildingEnumBuildingTypeFromJson(Map<String, dynamic> json) {
  final InfoBuildingEnumBuildingType infoBuildingEnumBuildingType = InfoBuildingEnumBuildingType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoBuildingEnumBuildingType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingEnumBuildingType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingEnumBuildingType.engName = engName;
  }
  return infoBuildingEnumBuildingType;
}

Map<String, dynamic> $InfoBuildingEnumBuildingTypeToJson(InfoBuildingEnumBuildingType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoBuildingEnumBuildingTypeExtension on InfoBuildingEnumBuildingType {
  InfoBuildingEnumBuildingType copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoBuildingEnumBuildingType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoBuildingEnumBuildingProperty $InfoBuildingEnumBuildingPropertyFromJson(Map<String, dynamic> json) {
  final InfoBuildingEnumBuildingProperty infoBuildingEnumBuildingProperty = InfoBuildingEnumBuildingProperty();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoBuildingEnumBuildingProperty.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingEnumBuildingProperty.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingEnumBuildingProperty.engName = engName;
  }
  return infoBuildingEnumBuildingProperty;
}

Map<String, dynamic> $InfoBuildingEnumBuildingPropertyToJson(InfoBuildingEnumBuildingProperty entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoBuildingEnumBuildingPropertyExtension on InfoBuildingEnumBuildingProperty {
  InfoBuildingEnumBuildingProperty copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoBuildingEnumBuildingProperty()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoBuildingEnumBuildingFireLevel $InfoBuildingEnumBuildingFireLevelFromJson(Map<String, dynamic> json) {
  final InfoBuildingEnumBuildingFireLevel infoBuildingEnumBuildingFireLevel = InfoBuildingEnumBuildingFireLevel();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoBuildingEnumBuildingFireLevel.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingEnumBuildingFireLevel.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingEnumBuildingFireLevel.engName = engName;
  }
  return infoBuildingEnumBuildingFireLevel;
}

Map<String, dynamic> $InfoBuildingEnumBuildingFireLevelToJson(InfoBuildingEnumBuildingFireLevel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoBuildingEnumBuildingFireLevelExtension on InfoBuildingEnumBuildingFireLevel {
  InfoBuildingEnumBuildingFireLevel copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoBuildingEnumBuildingFireLevel()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoBuildingEnumBuildingFireResistance $InfoBuildingEnumBuildingFireResistanceFromJson(Map<String, dynamic> json) {
  final InfoBuildingEnumBuildingFireResistance infoBuildingEnumBuildingFireResistance = InfoBuildingEnumBuildingFireResistance();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoBuildingEnumBuildingFireResistance.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingEnumBuildingFireResistance.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingEnumBuildingFireResistance.engName = engName;
  }
  return infoBuildingEnumBuildingFireResistance;
}

Map<String, dynamic> $InfoBuildingEnumBuildingFireResistanceToJson(InfoBuildingEnumBuildingFireResistance entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoBuildingEnumBuildingFireResistanceExtension on InfoBuildingEnumBuildingFireResistance {
  InfoBuildingEnumBuildingFireResistance copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoBuildingEnumBuildingFireResistance()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoBuildingEnumBuildingStructure $InfoBuildingEnumBuildingStructureFromJson(Map<String, dynamic> json) {
  final InfoBuildingEnumBuildingStructure infoBuildingEnumBuildingStructure = InfoBuildingEnumBuildingStructure();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoBuildingEnumBuildingStructure.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingEnumBuildingStructure.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingEnumBuildingStructure.engName = engName;
  }
  return infoBuildingEnumBuildingStructure;
}

Map<String, dynamic> $InfoBuildingEnumBuildingStructureToJson(InfoBuildingEnumBuildingStructure entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoBuildingEnumBuildingStructureExtension on InfoBuildingEnumBuildingStructure {
  InfoBuildingEnumBuildingStructure copyWith({
    String? id,
    String? name,
    String? engName,
  }) {
    return InfoBuildingEnumBuildingStructure()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoBuildingCreater $InfoBuildingCreaterFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreater infoBuildingCreater = InfoBuildingCreater();
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    infoBuildingCreater.userId = userId;
  }
  final InfoBuildingCreaterEnumUserType? enumUserType = jsonConvert.convert<InfoBuildingCreaterEnumUserType>(
      json['enum_user_type']);
  if (enumUserType != null) {
    infoBuildingCreater.enumUserType = enumUserType;
  }
  final InfoBuildingCreaterEnumUserRole? enumUserRole = jsonConvert.convert<InfoBuildingCreaterEnumUserRole>(
      json['enum_user_role']);
  if (enumUserRole != null) {
    infoBuildingCreater.enumUserRole = enumUserRole;
  }
  final String? phoneNum = jsonConvert.convert<String>(json['phone_num']);
  if (phoneNum != null) {
    infoBuildingCreater.phoneNum = phoneNum;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    infoBuildingCreater.email = email;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingCreater.name = name;
  }
  final String? nickName = jsonConvert.convert<String>(json['nick_name']);
  if (nickName != null) {
    infoBuildingCreater.nickName = nickName;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    infoBuildingCreater.gender = gender;
  }
  final List<dynamic>? avatar = (json['avatar'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (avatar != null) {
    infoBuildingCreater.avatar = avatar;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    infoBuildingCreater.remarks = remarks;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    infoBuildingCreater.account = account;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(json['last_login_time']);
  if (lastLoginTime != null) {
    infoBuildingCreater.lastLoginTime = lastLoginTime;
  }
  final String? joinedTime = jsonConvert.convert<String>(json['joined_time']);
  if (joinedTime != null) {
    infoBuildingCreater.joinedTime = joinedTime;
  }
  final int? isSuperuser = jsonConvert.convert<int>(json['is_superuser']);
  if (isSuperuser != null) {
    infoBuildingCreater.isSuperuser = isSuperuser;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    infoBuildingCreater.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    infoBuildingCreater.lastName = lastName;
  }
  final String? idCode = jsonConvert.convert<String>(json['id_code']);
  if (idCode != null) {
    infoBuildingCreater.idCode = idCode;
  }
  final InfoBuildingCreaterEnumUserStaff? enumUserStaff = jsonConvert.convert<InfoBuildingCreaterEnumUserStaff>(
      json['enum_user_staff']);
  if (enumUserStaff != null) {
    infoBuildingCreater.enumUserStaff = enumUserStaff;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    infoBuildingCreater.isActive = isActive;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoBuildingCreater.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoBuildingCreater.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    infoBuildingCreater.createrId = createrId;
  }
  final String? politicalStatus = jsonConvert.convert<String>(json['political_status']);
  if (politicalStatus != null) {
    infoBuildingCreater.politicalStatus = politicalStatus;
  }
  final InfoBuildingCreaterEnumUserStatus? enumUserStatus = jsonConvert.convert<InfoBuildingCreaterEnumUserStatus>(
      json['enum_user_status']);
  if (enumUserStatus != null) {
    infoBuildingCreater.enumUserStatus = enumUserStatus;
  }
  final String? timeUserStatus = jsonConvert.convert<String>(json['time_user_status']);
  if (timeUserStatus != null) {
    infoBuildingCreater.timeUserStatus = timeUserStatus;
  }
  final String? nation = jsonConvert.convert<String>(json['nation']);
  if (nation != null) {
    infoBuildingCreater.nation = nation;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    infoBuildingCreater.address = address;
  }
  final String? accountNature = jsonConvert.convert<String>(json['account_nature']);
  if (accountNature != null) {
    infoBuildingCreater.accountNature = accountNature;
  }
  final int? accountSource = jsonConvert.convert<int>(json['account_source']);
  if (accountSource != null) {
    infoBuildingCreater.accountSource = accountSource;
  }
  final int? centerId = jsonConvert.convert<int>(json['center_id']);
  if (centerId != null) {
    infoBuildingCreater.centerId = centerId;
  }
  final int? companyId = jsonConvert.convert<int>(json['company_id']);
  if (companyId != null) {
    infoBuildingCreater.companyId = companyId;
  }
  final String? companyType = jsonConvert.convert<String>(json['company_type']);
  if (companyType != null) {
    infoBuildingCreater.companyType = companyType;
  }
  final int? isResetPwd = jsonConvert.convert<int>(json['is_reset_pwd']);
  if (isResetPwd != null) {
    infoBuildingCreater.isResetPwd = isResetPwd;
  }
  final InfoBuildingCreaterEnumUserAlarmMode? enumUserAlarmMode = jsonConvert.convert<
      InfoBuildingCreaterEnumUserAlarmMode>(json['enum_user_alarm_mode']);
  if (enumUserAlarmMode != null) {
    infoBuildingCreater.enumUserAlarmMode = enumUserAlarmMode;
  }
  final String? timeStartAlarmMode = jsonConvert.convert<String>(json['time_start_alarm_mode']);
  if (timeStartAlarmMode != null) {
    infoBuildingCreater.timeStartAlarmMode = timeStartAlarmMode;
  }
  final List<InfoBuildingCreaterUserPic>? userPic = (json['user_pic'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<InfoBuildingCreaterUserPic>(e) as InfoBuildingCreaterUserPic).toList();
  if (userPic != null) {
    infoBuildingCreater.userPic = userPic;
  }
  final int? registerStatus = jsonConvert.convert<int>(json['register_status']);
  if (registerStatus != null) {
    infoBuildingCreater.registerStatus = registerStatus;
  }
  final int? userValue = jsonConvert.convert<int>(json['user_value']);
  if (userValue != null) {
    infoBuildingCreater.userValue = userValue;
  }
  final int? userIntention = jsonConvert.convert<int>(json['user_intention']);
  if (userIntention != null) {
    infoBuildingCreater.userIntention = userIntention;
  }
  final dynamic expiredTime = json['expired_time'];
  if (expiredTime != null) {
    infoBuildingCreater.expiredTime = expiredTime;
  }
  final int? isDel = jsonConvert.convert<int>(json['is_del']);
  if (isDel != null) {
    infoBuildingCreater.isDel = isDel;
  }
  final int? homeVip = jsonConvert.convert<int>(json['home_vip']);
  if (homeVip != null) {
    infoBuildingCreater.homeVip = homeVip;
  }
  final int? agreeTerm = jsonConvert.convert<int>(json['agree_term']);
  if (agreeTerm != null) {
    infoBuildingCreater.agreeTerm = agreeTerm;
  }
  return infoBuildingCreater;
}

Map<String, dynamic> $InfoBuildingCreaterToJson(InfoBuildingCreater entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user_id'] = entity.userId;
  data['enum_user_type'] = entity.enumUserType?.toJson();
  data['enum_user_role'] = entity.enumUserRole?.toJson();
  data['phone_num'] = entity.phoneNum;
  data['email'] = entity.email;
  data['name'] = entity.name;
  data['nick_name'] = entity.nickName;
  data['gender'] = entity.gender;
  data['avatar'] = entity.avatar;
  data['remarks'] = entity.remarks;
  data['account'] = entity.account;
  data['last_login_time'] = entity.lastLoginTime;
  data['joined_time'] = entity.joinedTime;
  data['is_superuser'] = entity.isSuperuser;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['id_code'] = entity.idCode;
  data['enum_user_staff'] = entity.enumUserStaff?.toJson();
  data['is_active'] = entity.isActive;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['political_status'] = entity.politicalStatus;
  data['enum_user_status'] = entity.enumUserStatus?.toJson();
  data['time_user_status'] = entity.timeUserStatus;
  data['nation'] = entity.nation;
  data['address'] = entity.address;
  data['account_nature'] = entity.accountNature;
  data['account_source'] = entity.accountSource;
  data['center_id'] = entity.centerId;
  data['company_id'] = entity.companyId;
  data['company_type'] = entity.companyType;
  data['is_reset_pwd'] = entity.isResetPwd;
  data['enum_user_alarm_mode'] = entity.enumUserAlarmMode?.toJson();
  data['time_start_alarm_mode'] = entity.timeStartAlarmMode;
  data['user_pic'] = entity.userPic?.map((v) => v.toJson()).toList();
  data['register_status'] = entity.registerStatus;
  data['user_value'] = entity.userValue;
  data['user_intention'] = entity.userIntention;
  data['expired_time'] = entity.expiredTime;
  data['is_del'] = entity.isDel;
  data['home_vip'] = entity.homeVip;
  data['agree_term'] = entity.agreeTerm;
  return data;
}

extension InfoBuildingCreaterExtension on InfoBuildingCreater {
  InfoBuildingCreater copyWith({
    int? userId,
    InfoBuildingCreaterEnumUserType? enumUserType,
    InfoBuildingCreaterEnumUserRole? enumUserRole,
    String? phoneNum,
    String? email,
    String? name,
    String? nickName,
    int? gender,
    List<dynamic>? avatar,
    String? remarks,
    String? account,
    String? lastLoginTime,
    String? joinedTime,
    int? isSuperuser,
    String? firstName,
    String? lastName,
    String? idCode,
    InfoBuildingCreaterEnumUserStaff? enumUserStaff,
    int? isActive,
    String? createTime,
    String? updateTime,
    int? createrId,
    String? politicalStatus,
    InfoBuildingCreaterEnumUserStatus? enumUserStatus,
    String? timeUserStatus,
    String? nation,
    String? address,
    String? accountNature,
    int? accountSource,
    int? centerId,
    int? companyId,
    String? companyType,
    int? isResetPwd,
    InfoBuildingCreaterEnumUserAlarmMode? enumUserAlarmMode,
    String? timeStartAlarmMode,
    List<InfoBuildingCreaterUserPic>? userPic,
    int? registerStatus,
    int? userValue,
    int? userIntention,
    dynamic expiredTime,
    int? isDel,
    int? homeVip,
    int? agreeTerm,
  }) {
    return InfoBuildingCreater()
      ..userId = userId ?? this.userId
      ..enumUserType = enumUserType ?? this.enumUserType
      ..enumUserRole = enumUserRole ?? this.enumUserRole
      ..phoneNum = phoneNum ?? this.phoneNum
      ..email = email ?? this.email
      ..name = name ?? this.name
      ..nickName = nickName ?? this.nickName
      ..gender = gender ?? this.gender
      ..avatar = avatar ?? this.avatar
      ..remarks = remarks ?? this.remarks
      ..account = account ?? this.account
      ..lastLoginTime = lastLoginTime ?? this.lastLoginTime
      ..joinedTime = joinedTime ?? this.joinedTime
      ..isSuperuser = isSuperuser ?? this.isSuperuser
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..idCode = idCode ?? this.idCode
      ..enumUserStaff = enumUserStaff ?? this.enumUserStaff
      ..isActive = isActive ?? this.isActive
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..politicalStatus = politicalStatus ?? this.politicalStatus
      ..enumUserStatus = enumUserStatus ?? this.enumUserStatus
      ..timeUserStatus = timeUserStatus ?? this.timeUserStatus
      ..nation = nation ?? this.nation
      ..address = address ?? this.address
      ..accountNature = accountNature ?? this.accountNature
      ..accountSource = accountSource ?? this.accountSource
      ..centerId = centerId ?? this.centerId
      ..companyId = companyId ?? this.companyId
      ..companyType = companyType ?? this.companyType
      ..isResetPwd = isResetPwd ?? this.isResetPwd
      ..enumUserAlarmMode = enumUserAlarmMode ?? this.enumUserAlarmMode
      ..timeStartAlarmMode = timeStartAlarmMode ?? this.timeStartAlarmMode
      ..userPic = userPic ?? this.userPic
      ..registerStatus = registerStatus ?? this.registerStatus
      ..userValue = userValue ?? this.userValue
      ..userIntention = userIntention ?? this.userIntention
      ..expiredTime = expiredTime ?? this.expiredTime
      ..isDel = isDel ?? this.isDel
      ..homeVip = homeVip ?? this.homeVip
      ..agreeTerm = agreeTerm ?? this.agreeTerm;
  }
}

InfoBuildingCreaterEnumUserType $InfoBuildingCreaterEnumUserTypeFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterEnumUserType infoBuildingCreaterEnumUserType = InfoBuildingCreaterEnumUserType();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoBuildingCreaterEnumUserType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingCreaterEnumUserType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingCreaterEnumUserType.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoBuildingCreaterEnumUserType.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoBuildingCreaterEnumUserType.usedFlag = usedFlag;
  }
  return infoBuildingCreaterEnumUserType;
}

Map<String, dynamic> $InfoBuildingCreaterEnumUserTypeToJson(InfoBuildingCreaterEnumUserType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  return data;
}

extension InfoBuildingCreaterEnumUserTypeExtension on InfoBuildingCreaterEnumUserType {
  InfoBuildingCreaterEnumUserType copyWith({
    int? id,
    String? name,
    String? engName,
    String? companyClass,
    int? usedFlag,
  }) {
    return InfoBuildingCreaterEnumUserType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag;
  }
}

InfoBuildingCreaterEnumUserRole $InfoBuildingCreaterEnumUserRoleFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterEnumUserRole infoBuildingCreaterEnumUserRole = InfoBuildingCreaterEnumUserRole();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoBuildingCreaterEnumUserRole.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingCreaterEnumUserRole.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoBuildingCreaterEnumUserRole.engName = engName;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    infoBuildingCreaterEnumUserRole.enumUserType = enumUserType;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoBuildingCreaterEnumUserRole.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoBuildingCreaterEnumUserRole.usedFlag = usedFlag;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    infoBuildingCreaterEnumUserRole.isAdmin = isAdmin;
  }
  return infoBuildingCreaterEnumUserRole;
}

Map<String, dynamic> $InfoBuildingCreaterEnumUserRoleToJson(InfoBuildingCreaterEnumUserRole entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_user_type'] = entity.enumUserType;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  data['is_admin'] = entity.isAdmin;
  return data;
}

extension InfoBuildingCreaterEnumUserRoleExtension on InfoBuildingCreaterEnumUserRole {
  InfoBuildingCreaterEnumUserRole copyWith({
    int? id,
    String? name,
    String? engName,
    int? enumUserType,
    String? companyClass,
    int? usedFlag,
    int? isAdmin,
  }) {
    return InfoBuildingCreaterEnumUserRole()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumUserType = enumUserType ?? this.enumUserType
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag
      ..isAdmin = isAdmin ?? this.isAdmin;
  }
}

InfoBuildingCreaterEnumUserStaff $InfoBuildingCreaterEnumUserStaffFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterEnumUserStaff infoBuildingCreaterEnumUserStaff = InfoBuildingCreaterEnumUserStaff();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoBuildingCreaterEnumUserStaff.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingCreaterEnumUserStaff.name = name;
  }
  return infoBuildingCreaterEnumUserStaff;
}

Map<String, dynamic> $InfoBuildingCreaterEnumUserStaffToJson(InfoBuildingCreaterEnumUserStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoBuildingCreaterEnumUserStaffExtension on InfoBuildingCreaterEnumUserStaff {
  InfoBuildingCreaterEnumUserStaff copyWith({
    int? id,
    String? name,
  }) {
    return InfoBuildingCreaterEnumUserStaff()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoBuildingCreaterEnumUserStatus $InfoBuildingCreaterEnumUserStatusFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterEnumUserStatus infoBuildingCreaterEnumUserStatus = InfoBuildingCreaterEnumUserStatus();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoBuildingCreaterEnumUserStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoBuildingCreaterEnumUserStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoBuildingCreaterEnumUserStatus.engStatus = engStatus;
  }
  return infoBuildingCreaterEnumUserStatus;
}

Map<String, dynamic> $InfoBuildingCreaterEnumUserStatusToJson(InfoBuildingCreaterEnumUserStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoBuildingCreaterEnumUserStatusExtension on InfoBuildingCreaterEnumUserStatus {
  InfoBuildingCreaterEnumUserStatus copyWith({
    int? id,
    String? status,
    String? engStatus,
  }) {
    return InfoBuildingCreaterEnumUserStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoBuildingCreaterEnumUserAlarmMode $InfoBuildingCreaterEnumUserAlarmModeFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterEnumUserAlarmMode infoBuildingCreaterEnumUserAlarmMode = InfoBuildingCreaterEnumUserAlarmMode();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoBuildingCreaterEnumUserAlarmMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoBuildingCreaterEnumUserAlarmMode.name = name;
  }
  return infoBuildingCreaterEnumUserAlarmMode;
}

Map<String, dynamic> $InfoBuildingCreaterEnumUserAlarmModeToJson(InfoBuildingCreaterEnumUserAlarmMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoBuildingCreaterEnumUserAlarmModeExtension on InfoBuildingCreaterEnumUserAlarmMode {
  InfoBuildingCreaterEnumUserAlarmMode copyWith({
    int? id,
    String? name,
  }) {
    return InfoBuildingCreaterEnumUserAlarmMode()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoBuildingCreaterUserPic $InfoBuildingCreaterUserPicFromJson(Map<String, dynamic> json) {
  final InfoBuildingCreaterUserPic infoBuildingCreaterUserPic = InfoBuildingCreaterUserPic();
  final int? fileId = jsonConvert.convert<int>(json['file_id']);
  if (fileId != null) {
    infoBuildingCreaterUserPic.fileId = fileId;
  }
  final String? absolutePath = jsonConvert.convert<String>(json['absolute_path']);
  if (absolutePath != null) {
    infoBuildingCreaterUserPic.absolutePath = absolutePath;
  }
  return infoBuildingCreaterUserPic;
}

Map<String, dynamic> $InfoBuildingCreaterUserPicToJson(InfoBuildingCreaterUserPic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension InfoBuildingCreaterUserPicExtension on InfoBuildingCreaterUserPic {
  InfoBuildingCreaterUserPic copyWith({
    int? fileId,
    String? absolutePath,
  }) {
    return InfoBuildingCreaterUserPic()
      ..fileId = fileId ?? this.fileId
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}