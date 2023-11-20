import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/entitys/user_login_resp_entity.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';

/// 用户
class EventAPI {
  static Map<String,dynamic> getCompanyInfo(){
    return {
      'uid': Global.profile.data.userId,
      'company_id': Global.profile.data.companyId,
      'company_type': Global.profile.data.companyType,
      'id': Global.profile.data.companyId,
      'type': Global.profile.data.companyType,
    };
  }

  /// 获取事件列表
  static Future<Map<String,dynamic>> getEventListHomePage({Map<String,dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil().get('/api/api_proxy/event/event_list_home_page/', params: params);
    return response['data'];
  }

}
