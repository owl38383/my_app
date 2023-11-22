import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/login/user_login_request_entity.dart';

UserLoginRequestEntity $UserLoginRequestEntityFromJson(Map<String, dynamic> json) {
  final UserLoginRequestEntity userLoginRequestEntity = UserLoginRequestEntity();
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    userLoginRequestEntity.userName = userName;
  }
  final String? userPwd = jsonConvert.convert<String>(json['user_pwd']);
  if (userPwd != null) {
    userLoginRequestEntity.userPwd = userPwd;
  }
  return userLoginRequestEntity;
}

Map<String, dynamic> $UserLoginRequestEntityToJson(UserLoginRequestEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user_name'] = entity.userName;
  data['user_pwd'] = entity.userPwd;
  return data;
}

extension UserLoginRequestEntityExtension on UserLoginRequestEntity {
  UserLoginRequestEntity copyWith({
    String? userName,
    String? userPwd,
  }) {
    return UserLoginRequestEntity()
      ..userName = userName ?? this.userName
      ..userPwd = userPwd ?? this.userPwd;
  }
}