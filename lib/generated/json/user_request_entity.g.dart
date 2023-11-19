import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/user_request_entity.dart';

UserRequestEntity $UserRequestEntityFromJson(Map<String, dynamic> json) {
  final UserRequestEntity userRequestEntity = UserRequestEntity();
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    userRequestEntity.userName = userName;
  }
  final String? userPwd = jsonConvert.convert<String>(json['user_pwd']);
  if (userPwd != null) {
    userRequestEntity.userPwd = userPwd;
  }
  return userRequestEntity;
}

Map<String, dynamic> $UserRequestEntityToJson(UserRequestEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user_name'] = entity.userName;
  data['user_pwd'] = entity.userPwd;
  return data;
}

extension UserRequestEntityExtension on UserRequestEntity {
  UserRequestEntity copyWith({
    String? userName,
    String? userPwd,
  }) {
    return UserRequestEntity()
      ..userName = userName ?? this.userName
      ..userPwd = userPwd ?? this.userPwd;
  }
}