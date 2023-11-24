import 'dart:convert';

import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';

/// 用户
class EventAPI {
  static Map<String, dynamic> getCompanyInfo() {
    return {
      'uid': Global.profile.userId,
      'company_id': Global.selectCompany['companyId'],
      'company_type': Global.selectCompany['companyType'],
      'id': Global.selectCompany['companyId'],
      'type': Global.selectCompany['companyType'],
    };
  }

  /// 获取事件列表
  static Future<ApiResponseEntity<EventListHomePageData>> getEventListHomePage(
      {Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil()
        .get('/api/api_proxy/event/event_list_home_page/', params: params);
    return ApiResponseEntity.fromJson(response);
  }
}
