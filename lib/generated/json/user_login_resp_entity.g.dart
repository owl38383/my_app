import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/user_login_resp_entity.dart';

UserLoginRespEntity $UserLoginRespEntityFromJson(Map<String, dynamic> json) {
  final UserLoginRespEntity userLoginRespEntity = UserLoginRespEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    userLoginRespEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    userLoginRespEntity.msg = msg;
  }
  final String? engMsg = jsonConvert.convert<String>(json['eng_msg']);
  if (engMsg != null) {
    userLoginRespEntity.engMsg = engMsg;
  }
  final UserLoginRespData? data = jsonConvert.convert<UserLoginRespData>(
      json['data']);
  if (data != null) {
    userLoginRespEntity.data = data;
  }
  return userLoginRespEntity;
}

Map<String, dynamic> $UserLoginRespEntityToJson(UserLoginRespEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['eng_msg'] = entity.engMsg;
  data['data'] = entity.data.toJson();
  return data;
}

extension UserLoginRespEntityExtension on UserLoginRespEntity {
  UserLoginRespEntity copyWith({
    int? code,
    String? msg,
    String? engMsg,
    UserLoginRespData? data,
  }) {
    return UserLoginRespEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..engMsg = engMsg ?? this.engMsg
      ..data = data ?? this.data;
  }
}

UserLoginRespData $UserLoginRespDataFromJson(Map<String, dynamic> json) {
  final UserLoginRespData userLoginRespData = UserLoginRespData();
  final dynamic userId = json['user_id'];
  if (userId != null) {
    userLoginRespData.userId = userId;
  }
  final UserLoginRespDataEnumUserType? enumUserType = jsonConvert.convert<
      UserLoginRespDataEnumUserType>(json['enum_user_type']);
  if (enumUserType != null) {
    userLoginRespData.enumUserType = enumUserType;
  }
  final UserLoginRespDataEnumUserRole? enumUserRole = jsonConvert.convert<
      UserLoginRespDataEnumUserRole>(json['enum_user_role']);
  if (enumUserRole != null) {
    userLoginRespData.enumUserRole = enumUserRole;
  }
  final String? phoneNum = jsonConvert.convert<String>(json['phone_num']);
  if (phoneNum != null) {
    userLoginRespData.phoneNum = phoneNum;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    userLoginRespData.email = email;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespData.name = name;
  }
  final String? nickName = jsonConvert.convert<String>(json['nick_name']);
  if (nickName != null) {
    userLoginRespData.nickName = nickName;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    userLoginRespData.gender = gender;
  }
  final List<String>? avatar = (json['avatar'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (avatar != null) {
    userLoginRespData.avatar = avatar;
  }
  final String? remarks = jsonConvert.convert<String>(json['remarks']);
  if (remarks != null) {
    userLoginRespData.remarks = remarks;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    userLoginRespData.account = account;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(
      json['last_login_time']);
  if (lastLoginTime != null) {
    userLoginRespData.lastLoginTime = lastLoginTime;
  }
  final String? joinedTime = jsonConvert.convert<String>(json['joined_time']);
  if (joinedTime != null) {
    userLoginRespData.joinedTime = joinedTime;
  }
  final int? isSuperuser = jsonConvert.convert<int>(json['is_superuser']);
  if (isSuperuser != null) {
    userLoginRespData.isSuperuser = isSuperuser;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    userLoginRespData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    userLoginRespData.lastName = lastName;
  }
  final String? idCode = jsonConvert.convert<String>(json['id_code']);
  if (idCode != null) {
    userLoginRespData.idCode = idCode;
  }
  final UserLoginRespDataEnumUserStaff? enumUserStaff = jsonConvert.convert<
      UserLoginRespDataEnumUserStaff>(json['enum_user_staff']);
  if (enumUserStaff != null) {
    userLoginRespData.enumUserStaff = enumUserStaff;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespData.isActive = isActive;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    userLoginRespData.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    userLoginRespData.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    userLoginRespData.createrId = createrId;
  }
  final String? politicalStatus = jsonConvert.convert<String>(
      json['political_status']);
  if (politicalStatus != null) {
    userLoginRespData.politicalStatus = politicalStatus;
  }
  final UserLoginRespDataEnumUserStatus? enumUserStatus = jsonConvert.convert<
      UserLoginRespDataEnumUserStatus>(json['enum_user_status']);
  if (enumUserStatus != null) {
    userLoginRespData.enumUserStatus = enumUserStatus;
  }
  final String? timeUserStatus = jsonConvert.convert<String>(
      json['time_user_status']);
  if (timeUserStatus != null) {
    userLoginRespData.timeUserStatus = timeUserStatus;
  }
  final String? nation = jsonConvert.convert<String>(json['nation']);
  if (nation != null) {
    userLoginRespData.nation = nation;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    userLoginRespData.address = address;
  }
  final String? accountNature = jsonConvert.convert<String>(
      json['account_nature']);
  if (accountNature != null) {
    userLoginRespData.accountNature = accountNature;
  }
  final int? accountSource = jsonConvert.convert<int>(json['account_source']);
  if (accountSource != null) {
    userLoginRespData.accountSource = accountSource;
  }
  final int? centerId = jsonConvert.convert<int>(json['center_id']);
  if (centerId != null) {
    userLoginRespData.centerId = centerId;
  }
  final int? companyId = jsonConvert.convert<int>(json['company_id']);
  if (companyId != null) {
    userLoginRespData.companyId = companyId;
  }
  final String? companyType = jsonConvert.convert<String>(json['company_type']);
  if (companyType != null) {
    userLoginRespData.companyType = companyType;
  }
  final int? isResetPwd = jsonConvert.convert<int>(json['is_reset_pwd']);
  if (isResetPwd != null) {
    userLoginRespData.isResetPwd = isResetPwd;
  }
  final UserLoginRespDataEnumUserAlarmMode? enumUserAlarmMode = jsonConvert
      .convert<UserLoginRespDataEnumUserAlarmMode>(
      json['enum_user_alarm_mode']);
  if (enumUserAlarmMode != null) {
    userLoginRespData.enumUserAlarmMode = enumUserAlarmMode;
  }
  final String? timeStartAlarmMode = jsonConvert.convert<String>(
      json['time_start_alarm_mode']);
  if (timeStartAlarmMode != null) {
    userLoginRespData.timeStartAlarmMode = timeStartAlarmMode;
  }
  final List<UserLoginRespDataUserPic>? userPic = (json['user_pic'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserLoginRespDataUserPic>(
          e) as UserLoginRespDataUserPic).toList();
  if (userPic != null) {
    userLoginRespData.userPic = userPic;
  }
  final int? registerStatus = jsonConvert.convert<int>(json['register_status']);
  if (registerStatus != null) {
    userLoginRespData.registerStatus = registerStatus;
  }
  final int? userValue = jsonConvert.convert<int>(json['user_value']);
  if (userValue != null) {
    userLoginRespData.userValue = userValue;
  }
  final int? userIntention = jsonConvert.convert<int>(json['user_intention']);
  if (userIntention != null) {
    userLoginRespData.userIntention = userIntention;
  }
  final dynamic expiredTime = json['expired_time'];
  if (expiredTime != null) {
    userLoginRespData.expiredTime = expiredTime;
  }
  final int? isDel = jsonConvert.convert<int>(json['is_del']);
  if (isDel != null) {
    userLoginRespData.isDel = isDel;
  }
  final int? homeVip = jsonConvert.convert<int>(json['home_vip']);
  if (homeVip != null) {
    userLoginRespData.homeVip = homeVip;
  }
  final int? agreeTerm = jsonConvert.convert<int>(json['agree_term']);
  if (agreeTerm != null) {
    userLoginRespData.agreeTerm = agreeTerm;
  }
  final String? token = jsonConvert.convert<String>(json['token']);
  if (token != null) {
    userLoginRespData.token = token;
  }
  final String? companyName = jsonConvert.convert<String>(json['company_name']);
  if (companyName != null) {
    userLoginRespData.companyName = companyName;
  }
  final List<UserLoginRespDataAuth>? auth = (json['auth'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<UserLoginRespDataAuth>(e) as UserLoginRespDataAuth)
      .toList();
  if (auth != null) {
    userLoginRespData.auth = auth;
  }
  final List<
      UserLoginRespDataSettingUser>? settingUser = (json['setting_user'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserLoginRespDataSettingUser>(
          e) as UserLoginRespDataSettingUser).toList();
  if (settingUser != null) {
    userLoginRespData.settingUser = settingUser;
  }
  return userLoginRespData;
}

Map<String, dynamic> $UserLoginRespDataToJson(UserLoginRespData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user_id'] = entity.userId;
  data['enum_user_type'] = entity.enumUserType.toJson();
  data['enum_user_role'] = entity.enumUserRole.toJson();
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
  data['enum_user_staff'] = entity.enumUserStaff.toJson();
  data['is_active'] = entity.isActive;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['political_status'] = entity.politicalStatus;
  data['enum_user_status'] = entity.enumUserStatus.toJson();
  data['time_user_status'] = entity.timeUserStatus;
  data['nation'] = entity.nation;
  data['address'] = entity.address;
  data['account_nature'] = entity.accountNature;
  data['account_source'] = entity.accountSource;
  data['center_id'] = entity.centerId;
  data['company_id'] = entity.companyId;
  data['company_type'] = entity.companyType;
  data['is_reset_pwd'] = entity.isResetPwd;
  data['enum_user_alarm_mode'] = entity.enumUserAlarmMode.toJson();
  data['time_start_alarm_mode'] = entity.timeStartAlarmMode;
  data['user_pic'] = entity.userPic.map((v) => v.toJson()).toList();
  data['register_status'] = entity.registerStatus;
  data['user_value'] = entity.userValue;
  data['user_intention'] = entity.userIntention;
  data['expired_time'] = entity.expiredTime;
  data['is_del'] = entity.isDel;
  data['home_vip'] = entity.homeVip;
  data['agree_term'] = entity.agreeTerm;
  data['token'] = entity.token;
  data['company_name'] = entity.companyName;
  data['auth'] = entity.auth.map((v) => v.toJson()).toList();
  data['setting_user'] = entity.settingUser.map((v) => v.toJson()).toList();
  return data;
}

extension UserLoginRespDataExtension on UserLoginRespData {
  UserLoginRespData copyWith({
    dynamic userId,
    UserLoginRespDataEnumUserType? enumUserType,
    UserLoginRespDataEnumUserRole? enumUserRole,
    String? phoneNum,
    String? email,
    String? name,
    String? nickName,
    int? gender,
    List<String>? avatar,
    String? remarks,
    String? account,
    String? lastLoginTime,
    String? joinedTime,
    int? isSuperuser,
    String? firstName,
    String? lastName,
    String? idCode,
    UserLoginRespDataEnumUserStaff? enumUserStaff,
    int? isActive,
    String? createTime,
    String? updateTime,
    int? createrId,
    String? politicalStatus,
    UserLoginRespDataEnumUserStatus? enumUserStatus,
    String? timeUserStatus,
    String? nation,
    String? address,
    String? accountNature,
    int? accountSource,
    int? centerId,
    int? companyId,
    String? companyType,
    int? isResetPwd,
    UserLoginRespDataEnumUserAlarmMode? enumUserAlarmMode,
    String? timeStartAlarmMode,
    List<UserLoginRespDataUserPic>? userPic,
    int? registerStatus,
    int? userValue,
    int? userIntention,
    dynamic expiredTime,
    int? isDel,
    int? homeVip,
    int? agreeTerm,
    String? token,
    String? companyName,
    List<UserLoginRespDataAuth>? auth,
    List<UserLoginRespDataSettingUser>? settingUser,
  }) {
    return UserLoginRespData()
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
      ..agreeTerm = agreeTerm ?? this.agreeTerm
      ..token = token ?? this.token
      ..companyName = companyName ?? this.companyName
      ..auth = auth ?? this.auth
      ..settingUser = settingUser ?? this.settingUser;
  }
}

UserLoginRespDataEnumUserType $UserLoginRespDataEnumUserTypeFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataEnumUserType userLoginRespDataEnumUserType = UserLoginRespDataEnumUserType();
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    userLoginRespDataEnumUserType.usedFlag = usedFlag;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataEnumUserType.name = name;
  }
  final String? companyClass = jsonConvert.convert<String>(
      json['company_class']);
  if (companyClass != null) {
    userLoginRespDataEnumUserType.companyClass = companyClass;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    userLoginRespDataEnumUserType.engName = engName;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userLoginRespDataEnumUserType.id = id;
  }
  return userLoginRespDataEnumUserType;
}

Map<String, dynamic> $UserLoginRespDataEnumUserTypeToJson(
    UserLoginRespDataEnumUserType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['used_flag'] = entity.usedFlag;
  data['name'] = entity.name;
  data['company_class'] = entity.companyClass;
  data['eng_name'] = entity.engName;
  data['id'] = entity.id;
  return data;
}

extension UserLoginRespDataEnumUserTypeExtension on UserLoginRespDataEnumUserType {
  UserLoginRespDataEnumUserType copyWith({
    int? usedFlag,
    String? name,
    String? companyClass,
    String? engName,
    int? id,
  }) {
    return UserLoginRespDataEnumUserType()
      ..usedFlag = usedFlag ?? this.usedFlag
      ..name = name ?? this.name
      ..companyClass = companyClass ?? this.companyClass
      ..engName = engName ?? this.engName
      ..id = id ?? this.id;
  }
}

UserLoginRespDataEnumUserRole $UserLoginRespDataEnumUserRoleFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataEnumUserRole userLoginRespDataEnumUserRole = UserLoginRespDataEnumUserRole();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataEnumUserRole.name = name;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    userLoginRespDataEnumUserRole.usedFlag = usedFlag;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    userLoginRespDataEnumUserRole.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(
      json['company_class']);
  if (companyClass != null) {
    userLoginRespDataEnumUserRole.companyClass = companyClass;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    userLoginRespDataEnumUserRole.isAdmin = isAdmin;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    userLoginRespDataEnumUserRole.enumUserType = enumUserType;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userLoginRespDataEnumUserRole.id = id;
  }
  return userLoginRespDataEnumUserRole;
}

Map<String, dynamic> $UserLoginRespDataEnumUserRoleToJson(
    UserLoginRespDataEnumUserRole entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['used_flag'] = entity.usedFlag;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['is_admin'] = entity.isAdmin;
  data['enum_user_type'] = entity.enumUserType;
  data['id'] = entity.id;
  return data;
}

extension UserLoginRespDataEnumUserRoleExtension on UserLoginRespDataEnumUserRole {
  UserLoginRespDataEnumUserRole copyWith({
    String? name,
    int? usedFlag,
    String? engName,
    String? companyClass,
    int? isAdmin,
    int? enumUserType,
    int? id,
  }) {
    return UserLoginRespDataEnumUserRole()
      ..name = name ?? this.name
      ..usedFlag = usedFlag ?? this.usedFlag
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..isAdmin = isAdmin ?? this.isAdmin
      ..enumUserType = enumUserType ?? this.enumUserType
      ..id = id ?? this.id;
  }
}

UserLoginRespDataEnumUserStaff $UserLoginRespDataEnumUserStaffFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataEnumUserStaff userLoginRespDataEnumUserStaff = UserLoginRespDataEnumUserStaff();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userLoginRespDataEnumUserStaff.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataEnumUserStaff.name = name;
  }
  return userLoginRespDataEnumUserStaff;
}

Map<String, dynamic> $UserLoginRespDataEnumUserStaffToJson(
    UserLoginRespDataEnumUserStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension UserLoginRespDataEnumUserStaffExtension on UserLoginRespDataEnumUserStaff {
  UserLoginRespDataEnumUserStaff copyWith({
    int? id,
    String? name,
  }) {
    return UserLoginRespDataEnumUserStaff()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

UserLoginRespDataEnumUserStatus $UserLoginRespDataEnumUserStatusFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataEnumUserStatus userLoginRespDataEnumUserStatus = UserLoginRespDataEnumUserStatus();
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userLoginRespDataEnumUserStatus.status = status;
  }
  final String? engStatus = jsonConvert.convert<String>(json['eng_status']);
  if (engStatus != null) {
    userLoginRespDataEnumUserStatus.engStatus = engStatus;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userLoginRespDataEnumUserStatus.id = id;
  }
  return userLoginRespDataEnumUserStatus;
}

Map<String, dynamic> $UserLoginRespDataEnumUserStatusToJson(
    UserLoginRespDataEnumUserStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['eng_status'] = entity.engStatus;
  data['id'] = entity.id;
  return data;
}

extension UserLoginRespDataEnumUserStatusExtension on UserLoginRespDataEnumUserStatus {
  UserLoginRespDataEnumUserStatus copyWith({
    String? status,
    String? engStatus,
    int? id,
  }) {
    return UserLoginRespDataEnumUserStatus()
      ..status = status ?? this.status
      ..engStatus = engStatus ?? this.engStatus
      ..id = id ?? this.id;
  }
}

UserLoginRespDataEnumUserAlarmMode $UserLoginRespDataEnumUserAlarmModeFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataEnumUserAlarmMode userLoginRespDataEnumUserAlarmMode = UserLoginRespDataEnumUserAlarmMode();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userLoginRespDataEnumUserAlarmMode.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataEnumUserAlarmMode.name = name;
  }
  return userLoginRespDataEnumUserAlarmMode;
}

Map<String, dynamic> $UserLoginRespDataEnumUserAlarmModeToJson(
    UserLoginRespDataEnumUserAlarmMode entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension UserLoginRespDataEnumUserAlarmModeExtension on UserLoginRespDataEnumUserAlarmMode {
  UserLoginRespDataEnumUserAlarmMode copyWith({
    int? id,
    String? name,
  }) {
    return UserLoginRespDataEnumUserAlarmMode()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

UserLoginRespDataUserPic $UserLoginRespDataUserPicFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataUserPic userLoginRespDataUserPic = UserLoginRespDataUserPic();
  final int? fileId = jsonConvert.convert<int>(json['file_id']);
  if (fileId != null) {
    userLoginRespDataUserPic.fileId = fileId;
  }
  final String? absolutePath = jsonConvert.convert<String>(
      json['absolute_path']);
  if (absolutePath != null) {
    userLoginRespDataUserPic.absolutePath = absolutePath;
  }
  return userLoginRespDataUserPic;
}

Map<String, dynamic> $UserLoginRespDataUserPicToJson(
    UserLoginRespDataUserPic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['absolute_path'] = entity.absolutePath;
  return data;
}

extension UserLoginRespDataUserPicExtension on UserLoginRespDataUserPic {
  UserLoginRespDataUserPic copyWith({
    int? fileId,
    String? absolutePath,
  }) {
    return UserLoginRespDataUserPic()
      ..fileId = fileId ?? this.fileId
      ..absolutePath = absolutePath ?? this.absolutePath;
  }
}

UserLoginRespDataAuth $UserLoginRespDataAuthFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataAuth userLoginRespDataAuth = UserLoginRespDataAuth();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataAuth.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    userLoginRespDataAuth.type = type;
  }
  final String? route = jsonConvert.convert<String>(json['route']);
  if (route != null) {
    userLoginRespDataAuth.route = route;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userLoginRespDataAuth.desc = desc;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespDataAuth.isActive = isActive;
  }
  final int? auth = jsonConvert.convert<int>(json['auth']);
  if (auth != null) {
    userLoginRespDataAuth.auth = auth;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userLoginRespDataAuth.id = id;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userLoginRespDataAuth.pid = pid;
  }
  final List<
      UserLoginRespDataAuthChildren>? children = (json['children'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserLoginRespDataAuthChildren>(
          e) as UserLoginRespDataAuthChildren).toList();
  if (children != null) {
    userLoginRespDataAuth.children = children;
  }
  return userLoginRespDataAuth;
}

Map<String, dynamic> $UserLoginRespDataAuthToJson(
    UserLoginRespDataAuth entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['route'] = entity.route;
  data['desc'] = entity.desc;
  data['is_active'] = entity.isActive;
  data['auth'] = entity.auth;
  data['id'] = entity.id;
  data['pid'] = entity.pid;
  data['children'] = entity.children.map((v) => v.toJson()).toList();
  return data;
}

extension UserLoginRespDataAuthExtension on UserLoginRespDataAuth {
  UserLoginRespDataAuth copyWith({
    String? name,
    String? type,
    String? route,
    String? desc,
    int? isActive,
    int? auth,
    String? id,
    String? pid,
    List<UserLoginRespDataAuthChildren>? children,
  }) {
    return UserLoginRespDataAuth()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..route = route ?? this.route
      ..desc = desc ?? this.desc
      ..isActive = isActive ?? this.isActive
      ..auth = auth ?? this.auth
      ..id = id ?? this.id
      ..pid = pid ?? this.pid
      ..children = children ?? this.children;
  }
}

UserLoginRespDataAuthChildren $UserLoginRespDataAuthChildrenFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataAuthChildren userLoginRespDataAuthChildren = UserLoginRespDataAuthChildren();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataAuthChildren.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    userLoginRespDataAuthChildren.type = type;
  }
  final String? route = jsonConvert.convert<String>(json['route']);
  if (route != null) {
    userLoginRespDataAuthChildren.route = route;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userLoginRespDataAuthChildren.desc = desc;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespDataAuthChildren.isActive = isActive;
  }
  final int? auth = jsonConvert.convert<int>(json['auth']);
  if (auth != null) {
    userLoginRespDataAuthChildren.auth = auth;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userLoginRespDataAuthChildren.id = id;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userLoginRespDataAuthChildren.pid = pid;
  }
  final List<
      UserLoginRespDataAuthChildrenChildren>? children = (json['children'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserLoginRespDataAuthChildrenChildren>(
          e) as UserLoginRespDataAuthChildrenChildren).toList();
  if (children != null) {
    userLoginRespDataAuthChildren.children = children;
  }
  return userLoginRespDataAuthChildren;
}

Map<String, dynamic> $UserLoginRespDataAuthChildrenToJson(
    UserLoginRespDataAuthChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['route'] = entity.route;
  data['desc'] = entity.desc;
  data['is_active'] = entity.isActive;
  data['auth'] = entity.auth;
  data['id'] = entity.id;
  data['pid'] = entity.pid;
  data['children'] = entity.children.map((v) => v.toJson()).toList();
  return data;
}

extension UserLoginRespDataAuthChildrenExtension on UserLoginRespDataAuthChildren {
  UserLoginRespDataAuthChildren copyWith({
    String? name,
    String? type,
    String? route,
    String? desc,
    int? isActive,
    int? auth,
    String? id,
    String? pid,
    List<UserLoginRespDataAuthChildrenChildren>? children,
  }) {
    return UserLoginRespDataAuthChildren()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..route = route ?? this.route
      ..desc = desc ?? this.desc
      ..isActive = isActive ?? this.isActive
      ..auth = auth ?? this.auth
      ..id = id ?? this.id
      ..pid = pid ?? this.pid
      ..children = children ?? this.children;
  }
}

UserLoginRespDataAuthChildrenChildren $UserLoginRespDataAuthChildrenChildrenFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataAuthChildrenChildren userLoginRespDataAuthChildrenChildren = UserLoginRespDataAuthChildrenChildren();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataAuthChildrenChildren.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    userLoginRespDataAuthChildrenChildren.type = type;
  }
  final String? route = jsonConvert.convert<String>(json['route']);
  if (route != null) {
    userLoginRespDataAuthChildrenChildren.route = route;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userLoginRespDataAuthChildrenChildren.desc = desc;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespDataAuthChildrenChildren.isActive = isActive;
  }
  final int? auth = jsonConvert.convert<int>(json['auth']);
  if (auth != null) {
    userLoginRespDataAuthChildrenChildren.auth = auth;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userLoginRespDataAuthChildrenChildren.id = id;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userLoginRespDataAuthChildrenChildren.pid = pid;
  }
  final List<
      UserLoginRespDataAuthChildrenChildrenChildren>? children = (json['children'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          UserLoginRespDataAuthChildrenChildrenChildren>(
          e) as UserLoginRespDataAuthChildrenChildrenChildren).toList();
  if (children != null) {
    userLoginRespDataAuthChildrenChildren.children = children;
  }
  return userLoginRespDataAuthChildrenChildren;
}

Map<String, dynamic> $UserLoginRespDataAuthChildrenChildrenToJson(
    UserLoginRespDataAuthChildrenChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['route'] = entity.route;
  data['desc'] = entity.desc;
  data['is_active'] = entity.isActive;
  data['auth'] = entity.auth;
  data['id'] = entity.id;
  data['pid'] = entity.pid;
  data['children'] = entity.children.map((v) => v.toJson()).toList();
  return data;
}

extension UserLoginRespDataAuthChildrenChildrenExtension on UserLoginRespDataAuthChildrenChildren {
  UserLoginRespDataAuthChildrenChildren copyWith({
    String? name,
    String? type,
    String? route,
    String? desc,
    int? isActive,
    int? auth,
    String? id,
    String? pid,
    List<UserLoginRespDataAuthChildrenChildrenChildren>? children,
  }) {
    return UserLoginRespDataAuthChildrenChildren()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..route = route ?? this.route
      ..desc = desc ?? this.desc
      ..isActive = isActive ?? this.isActive
      ..auth = auth ?? this.auth
      ..id = id ?? this.id
      ..pid = pid ?? this.pid
      ..children = children ?? this.children;
  }
}

UserLoginRespDataAuthChildrenChildrenChildren $UserLoginRespDataAuthChildrenChildrenChildrenFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataAuthChildrenChildrenChildren userLoginRespDataAuthChildrenChildrenChildren = UserLoginRespDataAuthChildrenChildrenChildren();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataAuthChildrenChildrenChildren.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    userLoginRespDataAuthChildrenChildrenChildren.type = type;
  }
  final String? route = jsonConvert.convert<String>(json['route']);
  if (route != null) {
    userLoginRespDataAuthChildrenChildrenChildren.route = route;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userLoginRespDataAuthChildrenChildrenChildren.desc = desc;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespDataAuthChildrenChildrenChildren.isActive = isActive;
  }
  final int? auth = jsonConvert.convert<int>(json['auth']);
  if (auth != null) {
    userLoginRespDataAuthChildrenChildrenChildren.auth = auth;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userLoginRespDataAuthChildrenChildrenChildren.id = id;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userLoginRespDataAuthChildrenChildrenChildren.pid = pid;
  }
  final List<
      UserLoginRespDataAuthChildrenChildrenChildrenChildren>? children = (json['children'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          UserLoginRespDataAuthChildrenChildrenChildrenChildren>(
          e) as UserLoginRespDataAuthChildrenChildrenChildrenChildren).toList();
  if (children != null) {
    userLoginRespDataAuthChildrenChildrenChildren.children = children;
  }
  return userLoginRespDataAuthChildrenChildrenChildren;
}

Map<String, dynamic> $UserLoginRespDataAuthChildrenChildrenChildrenToJson(
    UserLoginRespDataAuthChildrenChildrenChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['route'] = entity.route;
  data['desc'] = entity.desc;
  data['is_active'] = entity.isActive;
  data['auth'] = entity.auth;
  data['id'] = entity.id;
  data['pid'] = entity.pid;
  data['children'] = entity.children.map((v) => v.toJson()).toList();
  return data;
}

extension UserLoginRespDataAuthChildrenChildrenChildrenExtension on UserLoginRespDataAuthChildrenChildrenChildren {
  UserLoginRespDataAuthChildrenChildrenChildren copyWith({
    String? name,
    String? type,
    String? route,
    String? desc,
    int? isActive,
    int? auth,
    String? id,
    String? pid,
    List<UserLoginRespDataAuthChildrenChildrenChildrenChildren>? children,
  }) {
    return UserLoginRespDataAuthChildrenChildrenChildren()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..route = route ?? this.route
      ..desc = desc ?? this.desc
      ..isActive = isActive ?? this.isActive
      ..auth = auth ?? this.auth
      ..id = id ?? this.id
      ..pid = pid ?? this.pid
      ..children = children ?? this.children;
  }
}

UserLoginRespDataAuthChildrenChildrenChildrenChildren $UserLoginRespDataAuthChildrenChildrenChildrenChildrenFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataAuthChildrenChildrenChildrenChildren userLoginRespDataAuthChildrenChildrenChildrenChildren = UserLoginRespDataAuthChildrenChildrenChildrenChildren();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.type = type;
  }
  final String? route = jsonConvert.convert<String>(json['route']);
  if (route != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.route = route;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.desc = desc;
  }
  final int? isActive = jsonConvert.convert<int>(json['is_active']);
  if (isActive != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.isActive = isActive;
  }
  final int? auth = jsonConvert.convert<int>(json['auth']);
  if (auth != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.auth = auth;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.id = id;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.pid = pid;
  }
  final List<String>? children = (json['children'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (children != null) {
    userLoginRespDataAuthChildrenChildrenChildrenChildren.children = children;
  }
  return userLoginRespDataAuthChildrenChildrenChildrenChildren;
}

Map<String,
    dynamic> $UserLoginRespDataAuthChildrenChildrenChildrenChildrenToJson(
    UserLoginRespDataAuthChildrenChildrenChildrenChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['route'] = entity.route;
  data['desc'] = entity.desc;
  data['is_active'] = entity.isActive;
  data['auth'] = entity.auth;
  data['id'] = entity.id;
  data['pid'] = entity.pid;
  data['children'] = entity.children;
  return data;
}

extension UserLoginRespDataAuthChildrenChildrenChildrenChildrenExtension on UserLoginRespDataAuthChildrenChildrenChildrenChildren {
  UserLoginRespDataAuthChildrenChildrenChildrenChildren copyWith({
    String? name,
    String? type,
    String? route,
    String? desc,
    int? isActive,
    int? auth,
    String? id,
    String? pid,
    List<String>? children,
  }) {
    return UserLoginRespDataAuthChildrenChildrenChildrenChildren()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..route = route ?? this.route
      ..desc = desc ?? this.desc
      ..isActive = isActive ?? this.isActive
      ..auth = auth ?? this.auth
      ..id = id ?? this.id
      ..pid = pid ?? this.pid
      ..children = children ?? this.children;
  }
}

UserLoginRespDataSettingUser $UserLoginRespDataSettingUserFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataSettingUser userLoginRespDataSettingUser = UserLoginRespDataSettingUser();
  final UserLoginRespDataSettingUserInfoUserPushSetting? infoUserPushSetting = jsonConvert
      .convert<UserLoginRespDataSettingUserInfoUserPushSetting>(
      json['info_user_push_setting']);
  if (infoUserPushSetting != null) {
    userLoginRespDataSettingUser.infoUserPushSetting = infoUserPushSetting;
  }
  return userLoginRespDataSettingUser;
}

Map<String, dynamic> $UserLoginRespDataSettingUserToJson(
    UserLoginRespDataSettingUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['info_user_push_setting'] = entity.infoUserPushSetting.toJson();
  return data;
}

extension UserLoginRespDataSettingUserExtension on UserLoginRespDataSettingUser {
  UserLoginRespDataSettingUser copyWith({
    UserLoginRespDataSettingUserInfoUserPushSetting? infoUserPushSetting,
  }) {
    return UserLoginRespDataSettingUser()
      ..infoUserPushSetting = infoUserPushSetting ?? this.infoUserPushSetting;
  }
}

UserLoginRespDataSettingUserInfoUserPushSetting $UserLoginRespDataSettingUserInfoUserPushSettingFromJson(
    Map<String, dynamic> json) {
  final UserLoginRespDataSettingUserInfoUserPushSetting userLoginRespDataSettingUserInfoUserPushSetting = UserLoginRespDataSettingUserInfoUserPushSetting();
  final int? settingId = jsonConvert.convert<int>(json['setting_id']);
  if (settingId != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.settingId = settingId;
  }
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.userId = userId;
  }
  final String? pushCode = jsonConvert.convert<String>(json['push_code']);
  if (pushCode != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.pushCode = pushCode;
  }
  final String? sound = jsonConvert.convert<String>(json['sound']);
  if (sound != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.sound = sound;
  }
  final int? prompt = jsonConvert.convert<int>(json['prompt']);
  if (prompt != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.prompt = prompt;
  }
  final int? beep = jsonConvert.convert<int>(json['beep']);
  if (beep != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.beep = beep;
  }
  final String? channel = jsonConvert.convert<String>(json['channel']);
  if (channel != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.channel = channel;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    userLoginRespDataSettingUserInfoUserPushSetting.createrId = createrId;
  }
  return userLoginRespDataSettingUserInfoUserPushSetting;
}

Map<String, dynamic> $UserLoginRespDataSettingUserInfoUserPushSettingToJson(
    UserLoginRespDataSettingUserInfoUserPushSetting entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['setting_id'] = entity.settingId;
  data['user_id'] = entity.userId;
  data['push_code'] = entity.pushCode;
  data['sound'] = entity.sound;
  data['prompt'] = entity.prompt;
  data['beep'] = entity.beep;
  data['channel'] = entity.channel;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  return data;
}

extension UserLoginRespDataSettingUserInfoUserPushSettingExtension on UserLoginRespDataSettingUserInfoUserPushSetting {
  UserLoginRespDataSettingUserInfoUserPushSetting copyWith({
    int? settingId,
    int? userId,
    String? pushCode,
    String? sound,
    int? prompt,
    int? beep,
    String? channel,
    String? createTime,
    String? updateTime,
    int? createrId,
  }) {
    return UserLoginRespDataSettingUserInfoUserPushSetting()
      ..settingId = settingId ?? this.settingId
      ..userId = userId ?? this.userId
      ..pushCode = pushCode ?? this.pushCode
      ..sound = sound ?? this.sound
      ..prompt = prompt ?? this.prompt
      ..beep = beep ?? this.beep
      ..channel = channel ?? this.channel
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId;
  }
}