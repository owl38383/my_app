import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/user_login_resp_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/user_login_resp_entity.g.dart';

@JsonSerializable()
class UserLoginRespEntity {
  late int code = 0;
  late String msg = '';
  @JSONField(name: "eng_msg")
  late String engMsg = '';
  UserLoginRespData data = UserLoginRespData();

  UserLoginRespEntity();

  factory UserLoginRespEntity.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespData {
  @JSONField(name: "user_id")
  dynamic userId;
  @JSONField(name: "enum_user_type")
  UserLoginRespDataEnumUserType enumUserType = UserLoginRespDataEnumUserType();
  @JSONField(name: "enum_user_role")
  UserLoginRespDataEnumUserRole enumUserRole = UserLoginRespDataEnumUserRole();
  @JSONField(name: "phone_num")
  late String phoneNum = '';
  late String email = '';
  late String name = '';
  @JSONField(name: "nick_name")
  late String nickName = '';
  late int gender = 0;
  late List<String> avatar = [];
  late String remarks = '';
  late String account = '';
  @JSONField(name: "last_login_time")
  late String lastLoginTime = '';
  @JSONField(name: "joined_time")
  late String joinedTime = '';
  @JSONField(name: "is_superuser")
  late int isSuperuser = 0;
  @JSONField(name: "first_name")
  late String firstName = '';
  @JSONField(name: "last_name")
  late String lastName = '';
  @JSONField(name: "id_code")
  late String idCode = '';
  @JSONField(name: "enum_user_staff")
  UserLoginRespDataEnumUserStaff enumUserStaff =
      UserLoginRespDataEnumUserStaff();
  @JSONField(name: "is_active")
  late int isActive = 0;
  @JSONField(name: "create_time")
  late String createTime = '';
  @JSONField(name: "update_time")
  late String updateTime = '';
  @JSONField(name: "creater_id")
  late int createrId = 0;
  @JSONField(name: "political_status")
  late String politicalStatus = '';
  @JSONField(name: "enum_user_status")
  UserLoginRespDataEnumUserStatus enumUserStatus =
      UserLoginRespDataEnumUserStatus();
  @JSONField(name: "time_user_status")
  late String timeUserStatus = '';
  late String nation = '';
  late String address = '';
  @JSONField(name: "account_nature")
  late String accountNature = '';
  @JSONField(name: "account_source")
  late int accountSource = 0;
  @JSONField(name: "center_id")
  late int centerId = 0;
  @JSONField(name: "company_id")
  late int companyId = 0;
  @JSONField(name: "company_type")
  late String companyType = '';
  @JSONField(name: "is_reset_pwd")
  late int isResetPwd = 0;
  @JSONField(name: "enum_user_alarm_mode")
  UserLoginRespDataEnumUserAlarmMode enumUserAlarmMode =
      UserLoginRespDataEnumUserAlarmMode();
  @JSONField(name: "time_start_alarm_mode")
  late String timeStartAlarmMode = '';
  @JSONField(name: "user_pic")
  late List<UserLoginRespDataUserPic> userPic = [];
  @JSONField(name: "register_status")
  late int registerStatus = 0;
  @JSONField(name: "user_value")
  late int userValue = 0;
  @JSONField(name: "user_intention")
  late int userIntention = 0;
  @JSONField(name: "expired_time")
  dynamic expiredTime;
  @JSONField(name: "is_del")
  late int isDel = 0;
  @JSONField(name: "home_vip")
  late int homeVip = 0;
  @JSONField(name: "agree_term")
  late int agreeTerm = 0;
  late String token = '';
  @JSONField(name: "company_name")
  late String companyName = '';
  late List<UserLoginRespDataAuth> auth = [];
  @JSONField(name: "setting_user")
  late List<UserLoginRespDataSettingUser> settingUser = [];

  UserLoginRespData();

  factory UserLoginRespData.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataEnumUserType {
  @JSONField(name: "used_flag")
  late int usedFlag = 0;
  late String name = '';
  @JSONField(name: "company_class")
  late String companyClass = '';
  @JSONField(name: "eng_name")
  late String engName = '';
  late int id = 0;

  UserLoginRespDataEnumUserType();

  factory UserLoginRespDataEnumUserType.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataEnumUserTypeFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataEnumUserTypeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataEnumUserRole {
  late String name = '';
  @JSONField(name: "used_flag")
  late int usedFlag = 0;
  @JSONField(name: "eng_name")
  late String engName = '';
  @JSONField(name: "company_class")
  late String companyClass = '';
  @JSONField(name: "is_admin")
  late int isAdmin = 0;
  @JSONField(name: "enum_user_type")
  late int enumUserType = 0;
  late int id = 0;

  UserLoginRespDataEnumUserRole();

  factory UserLoginRespDataEnumUserRole.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataEnumUserRoleFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataEnumUserRoleToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataEnumUserStaff {
  late int id = 0;
  late String name = '';

  UserLoginRespDataEnumUserStaff();

  factory UserLoginRespDataEnumUserStaff.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataEnumUserStaffFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataEnumUserStaffToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataEnumUserStatus {
  late String status = '';
  @JSONField(name: "eng_status")
  late String engStatus = '';
  late int id = 0;

  UserLoginRespDataEnumUserStatus();

  factory UserLoginRespDataEnumUserStatus.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataEnumUserStatusFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataEnumUserStatusToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataEnumUserAlarmMode {
  late int id = 0;
  late String name = '';

  UserLoginRespDataEnumUserAlarmMode();

  factory UserLoginRespDataEnumUserAlarmMode.fromJson(
          Map<String, dynamic> json) =>
      $UserLoginRespDataEnumUserAlarmModeFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserLoginRespDataEnumUserAlarmModeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataUserPic {
  @JSONField(name: "file_id")
  late int fileId = 0;
  @JSONField(name: "absolute_path")
  late String absolutePath = '';

  UserLoginRespDataUserPic();

  factory UserLoginRespDataUserPic.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataUserPicFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataUserPicToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataAuth {
  late String name = '';
  late String type = '';
  late String route = '';
  late String desc = '';
  @JSONField(name: "is_active")
  late int isActive = 0;
  late int auth = 0;
  late String id = '';
  late String pid = '';
  late List<UserLoginRespDataAuthChildren> children = [];

  UserLoginRespDataAuth();

  factory UserLoginRespDataAuth.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataAuthFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataAuthToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataAuthChildren {
  late String name = '';
  late String type = '';
  late String route = '';
  late String desc = '';
  @JSONField(name: "is_active")
  late int isActive = 0;
  late int auth = 0;
  late String id = '';
  late String pid = '';
  late List<UserLoginRespDataAuthChildrenChildren> children = [];

  UserLoginRespDataAuthChildren();

  factory UserLoginRespDataAuthChildren.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataAuthChildrenFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataAuthChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataAuthChildrenChildren {
  late String name = '';
  late String type = '';
  late String route = '';
  late String desc = '';
  @JSONField(name: "is_active")
  late int isActive = 0;
  late int auth = 0;
  late String id = '';
  late String pid = '';
  late List<UserLoginRespDataAuthChildrenChildrenChildren> children = [];

  UserLoginRespDataAuthChildrenChildren();

  factory UserLoginRespDataAuthChildrenChildren.fromJson(
          Map<String, dynamic> json) =>
      $UserLoginRespDataAuthChildrenChildrenFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserLoginRespDataAuthChildrenChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataAuthChildrenChildrenChildren {
  late String name = '';
  late String type = '';
  late String route = '';
  late String desc = '';
  @JSONField(name: "is_active")
  late int isActive = 0;
  late int auth = 0;
  late String id = '';
  late String pid = '';
  late List<UserLoginRespDataAuthChildrenChildrenChildrenChildren> children =
      [];

  UserLoginRespDataAuthChildrenChildrenChildren();

  factory UserLoginRespDataAuthChildrenChildrenChildren.fromJson(
          Map<String, dynamic> json) =>
      $UserLoginRespDataAuthChildrenChildrenChildrenFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserLoginRespDataAuthChildrenChildrenChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataAuthChildrenChildrenChildrenChildren {
  late String name = '';
  late String type = '';
  late String route = '';
  late String desc = '';
  @JSONField(name: "is_active")
  late int isActive = 0;
  late int auth = 0;
  late String id = '';
  late String pid = '';
  late List<String> children = [];

  UserLoginRespDataAuthChildrenChildrenChildrenChildren();

  factory UserLoginRespDataAuthChildrenChildrenChildrenChildren.fromJson(
          Map<String, dynamic> json) =>
      $UserLoginRespDataAuthChildrenChildrenChildrenChildrenFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserLoginRespDataAuthChildrenChildrenChildrenChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataSettingUser {
  @JSONField(name: "info_user_push_setting")
  late UserLoginRespDataSettingUserInfoUserPushSetting infoUserPushSetting;

  UserLoginRespDataSettingUser();

  factory UserLoginRespDataSettingUser.fromJson(Map<String, dynamic> json) =>
      $UserLoginRespDataSettingUserFromJson(json);

  Map<String, dynamic> toJson() => $UserLoginRespDataSettingUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserLoginRespDataSettingUserInfoUserPushSetting {
  @JSONField(name: "setting_id")
  late int settingId = 0;
  @JSONField(name: "user_id")
  late int userId = 0;
  @JSONField(name: "push_code")
  late String pushCode = '';
  late String sound = '';
  late int prompt = 0;
  late int beep = 0;
  late String channel = '';
  @JSONField(name: "create_time")
  late String createTime = '';
  @JSONField(name: "update_time")
  late String updateTime = '';
  @JSONField(name: "creater_id")
  late int createrId = 0;

  UserLoginRespDataSettingUserInfoUserPushSetting();

  factory UserLoginRespDataSettingUserInfoUserPushSetting.fromJson(
          Map<String, dynamic> json) =>
      $UserLoginRespDataSettingUserInfoUserPushSettingFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserLoginRespDataSettingUserInfoUserPushSettingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
