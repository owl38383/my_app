import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_floor_entity.dart';

InfoFloorEntity $InfoFloorEntityFromJson(Map<String, dynamic> json) {
  final InfoFloorEntity infoFloorEntity = InfoFloorEntity();
  final String? floorId = jsonConvert.convert<String>(json['floor_id']);
  if (floorId != null) {
    infoFloorEntity.floorId = floorId;
  }
  final String? buildingId = jsonConvert.convert<String>(json['building_id']);
  if (buildingId != null) {
    infoFloorEntity.buildingId = buildingId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorEntity.name = name;
  }
  final String? floorNumber = jsonConvert.convert<String>(json['floor_number']);
  if (floorNumber != null) {
    infoFloorEntity.floorNumber = floorNumber;
  }
  final String? floorIndex = jsonConvert.convert<String>(json['floor_index']);
  if (floorIndex != null) {
    infoFloorEntity.floorIndex = floorIndex;
  }
  final String? areaSize = jsonConvert.convert<String>(json['area_size']);
  if (areaSize != null) {
    infoFloorEntity.areaSize = areaSize;
  }
  final String? roomCount = jsonConvert.convert<String>(json['room_count']);
  if (roomCount != null) {
    infoFloorEntity.roomCount = roomCount;
  }
  final String? height = jsonConvert.convert<String>(json['height']);
  if (height != null) {
    infoFloorEntity.height = height;
  }
  final String? isRefuge = jsonConvert.convert<String>(json['is_refuge']);
  if (isRefuge != null) {
    infoFloorEntity.isRefuge = isRefuge;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoFloorEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoFloorEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoFloorEntity.createrId = createrId;
  }
  final String? indoormapFloorId = jsonConvert.convert<String>(json['indoormap_floor_id']);
  if (indoormapFloorId != null) {
    infoFloorEntity.indoormapFloorId = indoormapFloorId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoFloorEntity.isDel = isDel;
  }
  final InfoFloorCreater? creater = jsonConvert.convert<InfoFloorCreater>(json['creater']);
  if (creater != null) {
    infoFloorEntity.creater = creater;
  }
  return infoFloorEntity;
}

Map<String, dynamic> $InfoFloorEntityToJson(InfoFloorEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['floor_id'] = entity.floorId;
  data['building_id'] = entity.buildingId;
  data['name'] = entity.name;
  data['floor_number'] = entity.floorNumber;
  data['floor_index'] = entity.floorIndex;
  data['area_size'] = entity.areaSize;
  data['room_count'] = entity.roomCount;
  data['height'] = entity.height;
  data['is_refuge'] = entity.isRefuge;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['indoormap_floor_id'] = entity.indoormapFloorId;
  data['is_del'] = entity.isDel;
  data['creater'] = entity.creater?.toJson();
  return data;
}

extension InfoFloorEntityExtension on InfoFloorEntity {
  InfoFloorEntity copyWith({
    String? floorId,
    String? buildingId,
    String? name,
    String? floorNumber,
    String? floorIndex,
    String? areaSize,
    String? roomCount,
    String? height,
    String? isRefuge,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? indoormapFloorId,
    String? isDel,
    InfoFloorCreater? creater,
  }) {
    return InfoFloorEntity()
      ..floorId = floorId ?? this.floorId
      ..buildingId = buildingId ?? this.buildingId
      ..name = name ?? this.name
      ..floorNumber = floorNumber ?? this.floorNumber
      ..floorIndex = floorIndex ?? this.floorIndex
      ..areaSize = areaSize ?? this.areaSize
      ..roomCount = roomCount ?? this.roomCount
      ..height = height ?? this.height
      ..isRefuge = isRefuge ?? this.isRefuge
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..indoormapFloorId = indoormapFloorId ?? this.indoormapFloorId
      ..isDel = isDel ?? this.isDel
      ..creater = creater ?? this.creater;
  }
}

InfoFloorCreater $InfoFloorCreaterFromJson(Map<String, dynamic> json) {
  final InfoFloorCreater infoFloorCreater = InfoFloorCreater();
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    infoFloorCreater.userId = userId;
  }
  final InfoFloorCreaterEnumUserType? enumUserType = jsonConvert.convert<InfoFloorCreaterEnumUserType>(
      json['enum_user_type']);
  if (enumUserType != null) {
    infoFloorCreater.enumUserType = enumUserType;
  }
  final InfoFloorCreaterEnumUserRole? enumUserRole = jsonConvert.convert<InfoFloorCreaterEnumUserRole>(
      json['enum_user_role']);
  if (enumUserRole != null) {
    infoFloorCreater.enumUserRole = enumUserRole;
  }
  final String? phoneNum = jsonConvert.convert<String>(json['phone_num']);
  if (phoneNum != null) {
    infoFloorCreater.phoneNum = phoneNum;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    infoFloorCreater.email = email;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorCreater.name = name;
  }
  final String? nickName = jsonConvert.convert<String>(json['nick_name']);
  if (nickName != null) {
    infoFloorCreater.nickName = nickName;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    infoFloorCreater.gender = gender;
  }
  final List<dynamic>? avatar = (json['avatar'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (avatar != null) {
    infoFloorCreater.avatar = avatar;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    infoFloorCreater.remarks = remarks;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    infoFloorCreater.account = account;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(json['last_login_time']);
  if (lastLoginTime != null) {
    infoFloorCreater.lastLoginTime = lastLoginTime;
  }
  final String? joinedTime = jsonConvert.convert<String>(json['joined_time']);
  if (joinedTime != null) {
    infoFloorCreater.joinedTime = joinedTime;
  }
  final int? isSuperuser = jsonConvert.convert<int>(json['is_superuser']);
  if (isSuperuser != null) {
    infoFloorCreater.isSuperuser = isSuperuser;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    infoFloorCreater.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    infoFloorCreater.lastName = lastName;
  }
  final String? idCode = jsonConvert.convert<String>(json['id_code']);
  if (idCode != null) {
    infoFloorCreater.idCode = idCode;
  }
  final InfoFloorCreaterEnumUserStaff? enumUserStaff = jsonConvert.convert<InfoFloorCreaterEnumUserStaff>(
      json['enum_user_staff']);
  if (enumUserStaff != null) {
    infoFloorCreater.enumUserStaff = enumUserStaff;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    infoFloorCreater.isActive = isActive;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoFloorCreater.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoFloorCreater.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    infoFloorCreater.createrId = createrId;
  }
  final String? politicalStatus = jsonConvert.convert<String>(json['political_status']);
  if (politicalStatus != null) {
    infoFloorCreater.politicalStatus = politicalStatus;
  }
  final InfoFloorCreaterEnumUserStatus? enumUserStatus = jsonConvert.convert<InfoFloorCreaterEnumUserStatus>(
      json['enum_user_status']);
  if (enumUserStatus != null) {
    infoFloorCreater.enumUserStatus = enumUserStatus;
  }
  final String? timeUserStatus = jsonConvert.convert<String>(json['time_user_status']);
  if (timeUserStatus != null) {
    infoFloorCreater.timeUserStatus = timeUserStatus;
  }
  final String? nation = jsonConvert.convert<String>(json['nation']);
  if (nation != null) {
    infoFloorCreater.nation = nation;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    infoFloorCreater.address = address;
  }
  final String? accountNature = jsonConvert.convert<String>(json['account_nature']);
  if (accountNature != null) {
    infoFloorCreater.accountNature = accountNature;
  }
  final int? accountSource = jsonConvert.convert<int>(json['account_source']);
  if (accountSource != null) {
    infoFloorCreater.accountSource = accountSource;
  }
  final int? centerId = jsonConvert.convert<int>(json['center_id']);
  if (centerId != null) {
    infoFloorCreater.centerId = centerId;
  }
  final int? companyId = jsonConvert.convert<int>(json['company_id']);
  if (companyId != null) {
    infoFloorCreater.companyId = companyId;
  }
  final String? companyType = jsonConvert.convert<String>(json['company_type']);
  if (companyType != null) {
    infoFloorCreater.companyType = companyType;
  }
  final int? isResetPwd = jsonConvert.convert<int>(json['is_reset_pwd']);
  if (isResetPwd != null) {
    infoFloorCreater.isResetPwd = isResetPwd;
  }
  final InfoFloorCreaterEnumUserAlarmMode? enumUserAlarmMode = jsonConvert.convert<InfoFloorCreaterEnumUserAlarmMode>(
      json['enum_user_alarm_mode']);
  if (enumUserAlarmMode != null) {
    infoFloorCreater.enumUserAlarmMode = enumUserAlarmMode;
  }
  final String? timeStartAlarmMode = jsonConvert.convert<String>(json['time_start_alarm_mode']);
  if (timeStartAlarmMode != null) {
    infoFloorCreater.timeStartAlarmMode = timeStartAlarmMode;
  }
  final List<InfoFloorCreaterUserPic>? userPic = (json['user_pic'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<InfoFloorCreaterUserPic>(e) as InfoFloorCreaterUserPic).toList();
  if (userPic != null) {
    infoFloorCreater.userPic = userPic;
  }
  final int? registerStatus = jsonConvert.convert<int>(json['register_status']);
  if (registerStatus != null) {
    infoFloorCreater.registerStatus = registerStatus;
  }
  final int? userValue = jsonConvert.convert<int>(json['user_value']);
  if (userValue != null) {
    infoFloorCreater.userValue = userValue;
  }
  final int? userIntention = jsonConvert.convert<int>(json['user_intention']);
  if (userIntention != null) {
    infoFloorCreater.userIntention = userIntention;
  }
  final dynamic expiredTime = json['expired_time'];
  if (expiredTime != null) {
    infoFloorCreater.expiredTime = expiredTime;
  }
  final int? isDel = jsonConvert.convert<int>(json['is_del']);
  if (isDel != null) {
    infoFloorCreater.isDel = isDel;
  }
  final int? homeVip = jsonConvert.convert<int>(json['home_vip']);
  if (homeVip != null) {
    infoFloorCreater.homeVip = homeVip;
  }
  final int? agreeTerm = jsonConvert.convert<int>(json['agree_term']);
  if (agreeTerm != null) {
    infoFloorCreater.agreeTerm = agreeTerm;
  }
  return infoFloorCreater;
}

Map<String, dynamic> $InfoFloorCreaterToJson(InfoFloorCreater entity) {
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

extension InfoFloorCreaterExtension on InfoFloorCreater {
  InfoFloorCreater copyWith({
    int? userId,
    InfoFloorCreaterEnumUserType? enumUserType,
    InfoFloorCreaterEnumUserRole? enumUserRole,
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
    InfoFloorCreaterEnumUserStaff? enumUserStaff,
    int? isActive,
    String? createTime,
    String? updateTime,
    int? createrId,
    String? politicalStatus,
    InfoFloorCreaterEnumUserStatus? enumUserStatus,
    String? timeUserStatus,
    String? nation,
    String? address,
    String? accountNature,
    int? accountSource,
    int? centerId,
    int? companyId,
    String? companyType,
    int? isResetPwd,
    InfoFloorCreaterEnumUserAlarmMode? enumUserAlarmMode,
    String? timeStartAlarmMode,
    List<InfoFloorCreaterUserPic>? userPic,
    int? registerStatus,
    int? userValue,
    int? userIntention,
    dynamic expiredTime,
    int? isDel,
    int? homeVip,
    int? agreeTerm,
  }) {
    return InfoFloorCreater()
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

InfoFloorCreaterEnumUserType $InfoFloorCreaterEnumUserTypeFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterEnumUserType infoFloorCreaterEnumUserType = InfoFloorCreaterEnumUserType();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoFloorCreaterEnumUserType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorCreaterEnumUserType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoFloorCreaterEnumUserType.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoFloorCreaterEnumUserType.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoFloorCreaterEnumUserType.usedFlag = usedFlag;
  }
  return infoFloorCreaterEnumUserType;
}

Map<String, dynamic> $InfoFloorCreaterEnumUserTypeToJson(InfoFloorCreaterEnumUserType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  return data;
}

extension InfoFloorCreaterEnumUserTypeExtension on InfoFloorCreaterEnumUserType {
  InfoFloorCreaterEnumUserType copyWith({
    int? id,
    String? name,
    String? engName,
    String? companyClass,
    int? usedFlag,
  }) {
    return InfoFloorCreaterEnumUserType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag;
  }
}

InfoFloorCreaterEnumUserRole $InfoFloorCreaterEnumUserRoleFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterEnumUserRole infoFloorCreaterEnumUserRole = InfoFloorCreaterEnumUserRole();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoFloorCreaterEnumUserRole.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorCreaterEnumUserRole.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoFloorCreaterEnumUserRole.engName = engName;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    infoFloorCreaterEnumUserRole.enumUserType = enumUserType;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoFloorCreaterEnumUserRole.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoFloorCreaterEnumUserRole.usedFlag = usedFlag;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    infoFloorCreaterEnumUserRole.isAdmin = isAdmin;
  }
  return infoFloorCreaterEnumUserRole;
}

Map<String, dynamic> $InfoFloorCreaterEnumUserRoleToJson(InfoFloorCreaterEnumUserRole entity) {
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

extension InfoFloorCreaterEnumUserRoleExtension on InfoFloorCreaterEnumUserRole {
  InfoFloorCreaterEnumUserRole copyWith({
    int? id,
    String? name,
    String? engName,
    int? enumUserType,
    String? companyClass,
    int? usedFlag,
    int? isAdmin,
  }) {
    return InfoFloorCreaterEnumUserRole()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumUserType = enumUserType ?? this.enumUserType
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag
      ..isAdmin = isAdmin ?? this.isAdmin;
  }
}

InfoFloorCreaterEnumUserStaff $InfoFloorCreaterEnumUserStaffFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterEnumUserStaff infoFloorCreaterEnumUserStaff = InfoFloorCreaterEnumUserStaff();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoFloorCreaterEnumUserStaff.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorCreaterEnumUserStaff.name = name;
  }
  return infoFloorCreaterEnumUserStaff;
}

Map<String, dynamic> $InfoFloorCreaterEnumUserStaffToJson(InfoFloorCreaterEnumUserStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoFloorCreaterEnumUserStaffExtension on InfoFloorCreaterEnumUserStaff {
  InfoFloorCreaterEnumUserStaff copyWith({
    int? id,
    String? name,
  }) {
    return InfoFloorCreaterEnumUserStaff()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoFloorCreaterEnumUserStatus $InfoFloorCreaterEnumUserStatusFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterEnumUserStatus infoFloorCreaterEnumUserStatus = InfoFloorCreaterEnumUserStatus();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoFloorCreaterEnumUserStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoFloorCreaterEnumUserStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoFloorCreaterEnumUserStatus.engStatus = engStatus;
  }
  return infoFloorCreaterEnumUserStatus;
}

Map<String, dynamic> $InfoFloorCreaterEnumUserStatusToJson(InfoFloorCreaterEnumUserStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoFloorCreaterEnumUserStatusExtension on InfoFloorCreaterEnumUserStatus {
  InfoFloorCreaterEnumUserStatus copyWith({
    int? id,
    String? status,
    String? engStatus,
  }) {
    return InfoFloorCreaterEnumUserStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoFloorCreaterEnumUserAlarmMode $InfoFloorCreaterEnumUserAlarmModeFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterEnumUserAlarmMode infoFloorCreaterEnumUserAlarmMode = InfoFloorCreaterEnumUserAlarmMode();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoFloorCreaterEnumUserAlarmMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoFloorCreaterEnumUserAlarmMode.name = name;
  }
  return infoFloorCreaterEnumUserAlarmMode;
}

Map<String, dynamic> $InfoFloorCreaterEnumUserAlarmModeToJson(InfoFloorCreaterEnumUserAlarmMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoFloorCreaterEnumUserAlarmModeExtension on InfoFloorCreaterEnumUserAlarmMode {
  InfoFloorCreaterEnumUserAlarmMode copyWith({
    int? id,
    String? name,
  }) {
    return InfoFloorCreaterEnumUserAlarmMode()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoFloorCreaterUserPic $InfoFloorCreaterUserPicFromJson(Map<String, dynamic> json) {
  final InfoFloorCreaterUserPic infoFloorCreaterUserPic = InfoFloorCreaterUserPic();
  final int? fileId = jsonConvert.convert<int>(json['file_id']);
  if (fileId != null) {
    infoFloorCreaterUserPic.fileId = fileId;
  }
  final String? absolutePath = jsonConvert.convert<String>(json['absolute_path']);
  if (absolutePath != null) {
    infoFloorCreaterUserPic.absolutePath = absolutePath;
  }
  return infoFloorCreaterUserPic;
}

Map<String, dynamic> $InfoFloorCreaterUserPicToJson(InfoFloorCreaterUserPic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension InfoFloorCreaterUserPicExtension on InfoFloorCreaterUserPic {
  InfoFloorCreaterUserPic copyWith({
    int? fileId,
    String? absolutePath,
  }) {
    return InfoFloorCreaterUserPic()
      ..fileId = fileId ?? this.fileId
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}