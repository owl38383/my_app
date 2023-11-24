import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';

/// 用户
class UserAPI {
  static Map<String, dynamic> getCompanyInfo() {
    return {
      'uid': Global.profile.userId,
      'company_id': Global.selectCompany['companyId'],
      'company_type': Global.selectCompany['companyType'],
    };
  }

  /// 登录
  static Future<UserLoginRespEntity> login(
      {required UserLoginRequestEntity params}) async {
    var response = await HttpUtil()
        .post('/api/api_proxy/user/login/', params: params.toJson());
    return UserLoginRespEntity.fromJson(response);
  }

  /// 获取用户下单位
  static Future<CompanyListEntity> getCompanyListApi(
      {Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil().get(
        '/api/api_proxy/company/company_list_by_company_id/',
        params: params);
    return CompanyListEntity.fromJson(response);
  }

  /// 首页card数据
  static Future<CountByCaredData> getCountByCared(
      {Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil()
        .get('/api/api_proxy/statistic/count_by_cared/', params: params);
    return CountByCaredEntity.fromJson(response).data;
  }

  /// 获取我的应用
  static Future<MarketMineEntity> getMyApps(
      {Map<String, dynamic>? params}) async {
    params ??= {};
    params.addAll(getCompanyInfo());
    var response = await HttpUtil().get('/app/market/mine/', params: params);
    return MarketMineEntity.fromJson(response);
  }
}
