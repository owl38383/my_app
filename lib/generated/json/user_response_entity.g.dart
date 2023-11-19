import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/user_response_entity.dart';

UserResponseEntity $UserResponseEntityFromJson(Map<String, dynamic> json) {
  final UserResponseEntity userResponseEntity = UserResponseEntity();
  final String? token = jsonConvert.convert<String>(json['token']);
  if (token != null) {
    userResponseEntity.token = token;
  }
  final String? lastip = jsonConvert.convert<String>(json['lastip']);
  if (lastip != null) {
    userResponseEntity.lastip = lastip;
  }
  final String? lastaddr = jsonConvert.convert<String>(json['lastaddr']);
  if (lastaddr != null) {
    userResponseEntity.lastaddr = lastaddr;
  }
  final int? lastlogon = jsonConvert.convert<int>(json['lastlogon']);
  if (lastlogon != null) {
    userResponseEntity.lastlogon = lastlogon;
  }
  final int? retries = jsonConvert.convert<int>(json['retries']);
  if (retries != null) {
    userResponseEntity.retries = retries;
  }
  final String? platform = jsonConvert.convert<String>(json['platform']);
  if (platform != null) {
    userResponseEntity.platform = platform;
  }
  return userResponseEntity;
}

Map<String, dynamic> $UserResponseEntityToJson(UserResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['token'] = entity.token;
  data['lastip'] = entity.lastip;
  data['lastaddr'] = entity.lastaddr;
  data['lastlogon'] = entity.lastlogon;
  data['retries'] = entity.retries;
  data['platform'] = entity.platform;
  return data;
}

extension UserResponseEntityExtension on UserResponseEntity {
  UserResponseEntity copyWith({
    String? token,
    String? lastip,
    String? lastaddr,
    int? lastlogon,
    int? retries,
    String? platform,
  }) {
    return UserResponseEntity()
      ..token = token ?? this.token
      ..lastip = lastip ?? this.lastip
      ..lastaddr = lastaddr ?? this.lastaddr
      ..lastlogon = lastlogon ?? this.lastlogon
      ..retries = retries ?? this.retries
      ..platform = platform ?? this.platform;
  }
}