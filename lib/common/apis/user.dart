import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserResponseEntity> login({required UserRequestEntity params}) async {
    var response = await HttpUtil().post('/api/api_proxy/user/login/', params: params);
    return UserResponseEntity.fromJson(response['data']);
  }
}
