import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/infos/info_location_entity.dart';

InfoLocationEntity $InfoLocationEntityFromJson(Map<String, dynamic> json) {
  final InfoLocationEntity infoLocationEntity = InfoLocationEntity();
  final String? locationId = jsonConvert.convert<String>(json['location_id']);
  if (locationId != null) {
    infoLocationEntity.locationId = locationId;
  }
  final InfoLocationEnumLocationType? enumLocationType = jsonConvert.convert<InfoLocationEnumLocationType>(
      json['enum_location_type']);
  if (enumLocationType != null) {
    infoLocationEntity.enumLocationType = enumLocationType;
  }
  final String? fileId = jsonConvert.convert<String>(json['file_id']);
  if (fileId != null) {
    infoLocationEntity.fileId = fileId;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    infoLocationEntity.longitude = longitude;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    infoLocationEntity.latitude = latitude;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    infoLocationEntity.address = address;
  }
  final String? region = jsonConvert.convert<String>(json['region']);
  if (region != null) {
    infoLocationEntity.region = region;
  }
  final String? subdistrict = jsonConvert.convert<String>(json['subdistrict']);
  if (subdistrict != null) {
    infoLocationEntity.subdistrict = subdistrict;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoLocationEntity.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoLocationEntity.updateTime = updateTime;
  }
  final String? createrId = jsonConvert.convert<String>(json['creater_id']);
  if (createrId != null) {
    infoLocationEntity.createrId = createrId;
  }
  final String? isDel = jsonConvert.convert<String>(json['is_del']);
  if (isDel != null) {
    infoLocationEntity.isDel = isDel;
  }
  final String? coordinateCluster = jsonConvert.convert<String>(json['coordinate_cluster']);
  if (coordinateCluster != null) {
    infoLocationEntity.coordinateCluster = coordinateCluster;
  }
  final InfoLocationCreater? creater = jsonConvert.convert<InfoLocationCreater>(json['creater']);
  if (creater != null) {
    infoLocationEntity.creater = creater;
  }
  return infoLocationEntity;
}

Map<String, dynamic> $InfoLocationEntityToJson(InfoLocationEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['location_id'] = entity.locationId;
  data['enum_location_type'] = entity.enumLocationType?.toJson();
  data['file_id'] = entity.fileId;
  data['longitude'] = entity.longitude;
  data['latitude'] = entity.latitude;
  data['address'] = entity.address;
  data['region'] = entity.region;
  data['subdistrict'] = entity.subdistrict;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['is_del'] = entity.isDel;
  data['coordinate_cluster'] = entity.coordinateCluster;
  data['creater'] = entity.creater?.toJson();
  return data;
}

extension InfoLocationEntityExtension on InfoLocationEntity {
  InfoLocationEntity copyWith({
    String? locationId,
    InfoLocationEnumLocationType? enumLocationType,
    String? fileId,
    String? longitude,
    String? latitude,
    String? address,
    String? region,
    String? subdistrict,
    String? createTime,
    String? updateTime,
    String? createrId,
    String? isDel,
    String? coordinateCluster,
    InfoLocationCreater? creater,
  }) {
    return InfoLocationEntity()
      ..locationId = locationId ?? this.locationId
      ..enumLocationType = enumLocationType ?? this.enumLocationType
      ..fileId = fileId ?? this.fileId
      ..longitude = longitude ?? this.longitude
      ..latitude = latitude ?? this.latitude
      ..address = address ?? this.address
      ..region = region ?? this.region
      ..subdistrict = subdistrict ?? this.subdistrict
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..isDel = isDel ?? this.isDel
      ..coordinateCluster = coordinateCluster ?? this.coordinateCluster
      ..creater = creater ?? this.creater;
  }
}

InfoLocationEnumLocationType $InfoLocationEnumLocationTypeFromJson(Map<String, dynamic> json) {
  final InfoLocationEnumLocationType infoLocationEnumLocationType = InfoLocationEnumLocationType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    infoLocationEnumLocationType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationEnumLocationType.name = name;
  }
  final dynamic engName = json['eng_name'];
  if (engName != null) {
    infoLocationEnumLocationType.engName = engName;
  }
  return infoLocationEnumLocationType;
}

Map<String, dynamic> $InfoLocationEnumLocationTypeToJson(InfoLocationEnumLocationType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  return data;
}

extension InfoLocationEnumLocationTypeExtension on InfoLocationEnumLocationType {
  InfoLocationEnumLocationType copyWith({
    String? id,
    String? name,
    dynamic engName,
  }) {
    return InfoLocationEnumLocationType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName;
  }
}

InfoLocationCreater $InfoLocationCreaterFromJson(Map<String, dynamic> json) {
  final InfoLocationCreater infoLocationCreater = InfoLocationCreater();
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    infoLocationCreater.userId = userId;
  }
  final InfoLocationCreaterEnumUserType? enumUserType = jsonConvert.convert<InfoLocationCreaterEnumUserType>(
      json['enum_user_type']);
  if (enumUserType != null) {
    infoLocationCreater.enumUserType = enumUserType;
  }
  final InfoLocationCreaterEnumUserRole? enumUserRole = jsonConvert.convert<InfoLocationCreaterEnumUserRole>(
      json['enum_user_role']);
  if (enumUserRole != null) {
    infoLocationCreater.enumUserRole = enumUserRole;
  }
  final String? phoneNum = jsonConvert.convert<String>(json['phone_num']);
  if (phoneNum != null) {
    infoLocationCreater.phoneNum = phoneNum;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    infoLocationCreater.email = email;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationCreater.name = name;
  }
  final String? nickName = jsonConvert.convert<String>(json['nick_name']);
  if (nickName != null) {
    infoLocationCreater.nickName = nickName;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    infoLocationCreater.gender = gender;
  }
  final List<dynamic>? avatar = (json['avatar'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (avatar != null) {
    infoLocationCreater.avatar = avatar;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    infoLocationCreater.remarks = remarks;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    infoLocationCreater.account = account;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(json['last_login_time']);
  if (lastLoginTime != null) {
    infoLocationCreater.lastLoginTime = lastLoginTime;
  }
  final String? joinedTime = jsonConvert.convert<String>(json['joined_time']);
  if (joinedTime != null) {
    infoLocationCreater.joinedTime = joinedTime;
  }
  final int? isSuperuser = jsonConvert.convert<int>(json['is_superuser']);
  if (isSuperuser != null) {
    infoLocationCreater.isSuperuser = isSuperuser;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    infoLocationCreater.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    infoLocationCreater.lastName = lastName;
  }
  final String? idCode = jsonConvert.convert<String>(json['id_code']);
  if (idCode != null) {
    infoLocationCreater.idCode = idCode;
  }
  final InfoLocationCreaterEnumUserStaff? enumUserStaff = jsonConvert.convert<InfoLocationCreaterEnumUserStaff>(
      json['enum_user_staff']);
  if (enumUserStaff != null) {
    infoLocationCreater.enumUserStaff = enumUserStaff;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    infoLocationCreater.isActive = isActive;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    infoLocationCreater.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    infoLocationCreater.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    infoLocationCreater.createrId = createrId;
  }
  final String? politicalStatus = jsonConvert.convert<String>(json['political_status']);
  if (politicalStatus != null) {
    infoLocationCreater.politicalStatus = politicalStatus;
  }
  final InfoLocationCreaterEnumUserStatus? enumUserStatus = jsonConvert.convert<InfoLocationCreaterEnumUserStatus>(
      json['enum_user_status']);
  if (enumUserStatus != null) {
    infoLocationCreater.enumUserStatus = enumUserStatus;
  }
  final String? timeUserStatus = jsonConvert.convert<String>(json['time_user_status']);
  if (timeUserStatus != null) {
    infoLocationCreater.timeUserStatus = timeUserStatus;
  }
  final String? nation = jsonConvert.convert<String>(json['nation']);
  if (nation != null) {
    infoLocationCreater.nation = nation;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    infoLocationCreater.address = address;
  }
  final String? accountNature = jsonConvert.convert<String>(json['account_nature']);
  if (accountNature != null) {
    infoLocationCreater.accountNature = accountNature;
  }
  final int? accountSource = jsonConvert.convert<int>(json['account_source']);
  if (accountSource != null) {
    infoLocationCreater.accountSource = accountSource;
  }
  final int? centerId = jsonConvert.convert<int>(json['center_id']);
  if (centerId != null) {
    infoLocationCreater.centerId = centerId;
  }
  final int? companyId = jsonConvert.convert<int>(json['company_id']);
  if (companyId != null) {
    infoLocationCreater.companyId = companyId;
  }
  final String? companyType = jsonConvert.convert<String>(json['company_type']);
  if (companyType != null) {
    infoLocationCreater.companyType = companyType;
  }
  final int? isResetPwd = jsonConvert.convert<int>(json['is_reset_pwd']);
  if (isResetPwd != null) {
    infoLocationCreater.isResetPwd = isResetPwd;
  }
  final InfoLocationCreaterEnumUserAlarmMode? enumUserAlarmMode = jsonConvert.convert<
      InfoLocationCreaterEnumUserAlarmMode>(json['enum_user_alarm_mode']);
  if (enumUserAlarmMode != null) {
    infoLocationCreater.enumUserAlarmMode = enumUserAlarmMode;
  }
  final String? timeStartAlarmMode = jsonConvert.convert<String>(json['time_start_alarm_mode']);
  if (timeStartAlarmMode != null) {
    infoLocationCreater.timeStartAlarmMode = timeStartAlarmMode;
  }
  final List<InfoLocationCreaterUserPic>? userPic = (json['user_pic'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<InfoLocationCreaterUserPic>(e) as InfoLocationCreaterUserPic).toList();
  if (userPic != null) {
    infoLocationCreater.userPic = userPic;
  }
  final int? registerStatus = jsonConvert.convert<int>(json['register_status']);
  if (registerStatus != null) {
    infoLocationCreater.registerStatus = registerStatus;
  }
  final int? userValue = jsonConvert.convert<int>(json['user_value']);
  if (userValue != null) {
    infoLocationCreater.userValue = userValue;
  }
  final int? userIntention = jsonConvert.convert<int>(json['user_intention']);
  if (userIntention != null) {
    infoLocationCreater.userIntention = userIntention;
  }
  final dynamic expiredTime = json['expired_time'];
  if (expiredTime != null) {
    infoLocationCreater.expiredTime = expiredTime;
  }
  final int? isDel = jsonConvert.convert<int>(json['is_del']);
  if (isDel != null) {
    infoLocationCreater.isDel = isDel;
  }
  final int? homeVip = jsonConvert.convert<int>(json['home_vip']);
  if (homeVip != null) {
    infoLocationCreater.homeVip = homeVip;
  }
  final int? agreeTerm = jsonConvert.convert<int>(json['agree_term']);
  if (agreeTerm != null) {
    infoLocationCreater.agreeTerm = agreeTerm;
  }
  return infoLocationCreater;
}

Map<String, dynamic> $InfoLocationCreaterToJson(InfoLocationCreater entity) {
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

extension InfoLocationCreaterExtension on InfoLocationCreater {
  InfoLocationCreater copyWith({
    int? userId,
    InfoLocationCreaterEnumUserType? enumUserType,
    InfoLocationCreaterEnumUserRole? enumUserRole,
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
    InfoLocationCreaterEnumUserStaff? enumUserStaff,
    int? isActive,
    String? createTime,
    String? updateTime,
    int? createrId,
    String? politicalStatus,
    InfoLocationCreaterEnumUserStatus? enumUserStatus,
    String? timeUserStatus,
    String? nation,
    String? address,
    String? accountNature,
    int? accountSource,
    int? centerId,
    int? companyId,
    String? companyType,
    int? isResetPwd,
    InfoLocationCreaterEnumUserAlarmMode? enumUserAlarmMode,
    String? timeStartAlarmMode,
    List<InfoLocationCreaterUserPic>? userPic,
    int? registerStatus,
    int? userValue,
    int? userIntention,
    dynamic expiredTime,
    int? isDel,
    int? homeVip,
    int? agreeTerm,
  }) {
    return InfoLocationCreater()
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

InfoLocationCreaterEnumUserType $InfoLocationCreaterEnumUserTypeFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterEnumUserType infoLocationCreaterEnumUserType = InfoLocationCreaterEnumUserType();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoLocationCreaterEnumUserType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationCreaterEnumUserType.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoLocationCreaterEnumUserType.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoLocationCreaterEnumUserType.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoLocationCreaterEnumUserType.usedFlag = usedFlag;
  }
  return infoLocationCreaterEnumUserType;
}

Map<String, dynamic> $InfoLocationCreaterEnumUserTypeToJson(InfoLocationCreaterEnumUserType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  return data;
}

extension InfoLocationCreaterEnumUserTypeExtension on InfoLocationCreaterEnumUserType {
  InfoLocationCreaterEnumUserType copyWith({
    int? id,
    String? name,
    String? engName,
    String? companyClass,
    int? usedFlag,
  }) {
    return InfoLocationCreaterEnumUserType()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag;
  }
}

InfoLocationCreaterEnumUserRole $InfoLocationCreaterEnumUserRoleFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterEnumUserRole infoLocationCreaterEnumUserRole = InfoLocationCreaterEnumUserRole();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoLocationCreaterEnumUserRole.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationCreaterEnumUserRole.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    infoLocationCreaterEnumUserRole.engName = engName;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    infoLocationCreaterEnumUserRole.enumUserType = enumUserType;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    infoLocationCreaterEnumUserRole.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    infoLocationCreaterEnumUserRole.usedFlag = usedFlag;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    infoLocationCreaterEnumUserRole.isAdmin = isAdmin;
  }
  return infoLocationCreaterEnumUserRole;
}

Map<String, dynamic> $InfoLocationCreaterEnumUserRoleToJson(InfoLocationCreaterEnumUserRole entity) {
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

extension InfoLocationCreaterEnumUserRoleExtension on InfoLocationCreaterEnumUserRole {
  InfoLocationCreaterEnumUserRole copyWith({
    int? id,
    String? name,
    String? engName,
    int? enumUserType,
    String? companyClass,
    int? usedFlag,
    int? isAdmin,
  }) {
    return InfoLocationCreaterEnumUserRole()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumUserType = enumUserType ?? this.enumUserType
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag
      ..isAdmin = isAdmin ?? this.isAdmin;
  }
}

InfoLocationCreaterEnumUserStaff $InfoLocationCreaterEnumUserStaffFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterEnumUserStaff infoLocationCreaterEnumUserStaff = InfoLocationCreaterEnumUserStaff();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoLocationCreaterEnumUserStaff.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationCreaterEnumUserStaff.name = name;
  }
  return infoLocationCreaterEnumUserStaff;
}

Map<String, dynamic> $InfoLocationCreaterEnumUserStaffToJson(InfoLocationCreaterEnumUserStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoLocationCreaterEnumUserStaffExtension on InfoLocationCreaterEnumUserStaff {
  InfoLocationCreaterEnumUserStaff copyWith({
    int? id,
    String? name,
  }) {
    return InfoLocationCreaterEnumUserStaff()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoLocationCreaterEnumUserStatus $InfoLocationCreaterEnumUserStatusFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterEnumUserStatus infoLocationCreaterEnumUserStatus = InfoLocationCreaterEnumUserStatus();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoLocationCreaterEnumUserStatus.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    infoLocationCreaterEnumUserStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    infoLocationCreaterEnumUserStatus.engStatus = engStatus;
  }
  return infoLocationCreaterEnumUserStatus;
}

Map<String, dynamic> $InfoLocationCreaterEnumUserStatusToJson(InfoLocationCreaterEnumUserStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  return data;
}

extension InfoLocationCreaterEnumUserStatusExtension on InfoLocationCreaterEnumUserStatus {
  InfoLocationCreaterEnumUserStatus copyWith({
    int? id,
    String? status,
    String? engStatus,
  }) {
    return InfoLocationCreaterEnumUserStatus()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus;
  }
}

InfoLocationCreaterEnumUserAlarmMode $InfoLocationCreaterEnumUserAlarmModeFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterEnumUserAlarmMode infoLocationCreaterEnumUserAlarmMode = InfoLocationCreaterEnumUserAlarmMode();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    infoLocationCreaterEnumUserAlarmMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    infoLocationCreaterEnumUserAlarmMode.name = name;
  }
  return infoLocationCreaterEnumUserAlarmMode;
}

Map<String, dynamic> $InfoLocationCreaterEnumUserAlarmModeToJson(InfoLocationCreaterEnumUserAlarmMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension InfoLocationCreaterEnumUserAlarmModeExtension on InfoLocationCreaterEnumUserAlarmMode {
  InfoLocationCreaterEnumUserAlarmMode copyWith({
    int? id,
    String? name,
  }) {
    return InfoLocationCreaterEnumUserAlarmMode()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

InfoLocationCreaterUserPic $InfoLocationCreaterUserPicFromJson(Map<String, dynamic> json) {
  final InfoLocationCreaterUserPic infoLocationCreaterUserPic = InfoLocationCreaterUserPic();
  final int? fileId = jsonConvert.convert<int>(json['file_id']);
  if (fileId != null) {
    infoLocationCreaterUserPic.fileId = fileId;
  }
  final String? absolutePath = jsonConvert.convert<String>(json['absolute_path']);
  if (absolutePath != null) {
    infoLocationCreaterUserPic.absolutePath = absolutePath;
  }
  return infoLocationCreaterUserPic;
}

Map<String, dynamic> $InfoLocationCreaterUserPicToJson(InfoLocationCreaterUserPic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension InfoLocationCreaterUserPicExtension on InfoLocationCreaterUserPic {
  InfoLocationCreaterUserPic copyWith({
    int? fileId,
    String? absolutePath,
  }) {
    return InfoLocationCreaterUserPic()
      ..fileId = fileId ?? this.fileId
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}