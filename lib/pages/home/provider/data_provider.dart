import 'package:flutter/foundation.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

class DataProvider extends ChangeNotifier {
  CompanyListData _companyListData = CompanyListData();
  CountByCaredData _cardInfo = CountByCaredData();

  CompanyListData get companyListData => _companyListData;
  CountByCaredData get cardInfo => _cardInfo;

  void refresh() async {
    await fetchData(); // 当单位ID改变时，重新拉取数据
    // 通知监听器（观察者）状态已经改变
    notifyListeners();
  }

  Future<void> fetchData() async {
    _companyListData = CompanyListData.fromJson(
      StorageUtil().getJson(STORAGE_USER_COMPANY_KEY),
    );
    _cardInfo = await UserAPI.getCountByCared();
  }
}

class EventProvider extends ChangeNotifier {
  int pageNo = 0;
  int pageSize = 10;
  int enumConfirmType = 0;
  late String _statusCategory;
  List<EventListHomePageDataList> eventListHomePageDataList = [];

  void changestatusCategory(String statusCategory) {
    if (statusCategory.isNotEmpty) {
      _statusCategory = statusCategory;
      refresh();
    }
  }

  void refresh() async {
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
    EventListHomePageEntity event =
        await EventAPI.getEventListHomePage(params: params);
    return event.data.list;
  }

  Future<void> loadMore() async {
    pageNo++;
    eventListHomePageDataList.addAll(await fetchData());
    notifyListeners();
  }
}
