import 'package:flutter/foundation.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

class DataProvider extends ChangeNotifier {
  CountByCaredData _cardInfo = CountByCaredData();

  CountByCaredData get cardInfo => _cardInfo;

  void refresh() async {
    await fetchData(); // 当单位ID改变时，重新拉取数据
    // 通知监听器（观察者）状态已经改变
    notifyListeners();
  }

  Future<void> fetchData() async {
    _cardInfo = await UserAPI.getCountByCared();
  }
}

class EventProvider extends ChangeNotifier {
  int pageNo = 0;
  int pageSize = 10;
  int enumConfirmType = 0;
  late String _statusCategory;
  List<EventListHomePageDataList> eventListHomePageDataList = [];

  void changeStatusCategory(String statusCategory) {
    if (statusCategory.isNotEmpty) {
      _statusCategory = statusCategory;
      refresh();
    }
  }

  void refresh() async {
    pageNo = 0;
    eventListHomePageDataList = await fetchData();
    // 通知监听器（观察者）状态已经改变
    notifyListeners();
  }

  Future<List<EventListHomePageDataList>> fetchData() async {
    Map<String, dynamic> params = {
      'page_no': pageNo,
      'page_size': pageSize,
      'enum_confirm_type': '0',
      'status_category': _statusCategory,
    };
    ApiResponseEntity<EventListHomePageData> event =
        await EventAPI.getEventListHomePage(params: params);
    return event.data?.list ?? [];
  }

  Future<void> loadMore() async {
    pageNo++;
    eventListHomePageDataList.addAll(await fetchData());
    notifyListeners();
  }
}



class CompanyListProvider extends ChangeNotifier {

  CompanyListData companyListData = CompanyListData();


  void refresh() async {
    companyListData = await fetchData();
    // 通知监听器（观察者）状态已经改变
    notifyListeners();
  }

  Future<CompanyListData> fetchData() async {
    // 保存单位信息
    CompanyListEntity companyList = await UserAPI.getCompanyListApi(params: {
      "unit_type": 'info_company_cared',
    });
    return companyList.data;
  }
}
