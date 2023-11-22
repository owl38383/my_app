import 'package:flutter/foundation.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

class DataProvider extends ChangeNotifier {

  String _selectedUnitId = "";
  String _selectedCompanyName = "";
  CompanyListData _companyListData = CompanyListData();
  CountByCaredData _cardInfo = CountByCaredData();

  String get selectedUnitId => _selectedUnitId;
  String get selectedCompanyName => _selectedCompanyName;

  CompanyListData get companyListData => _companyListData;
  CountByCaredData get cardInfo => _cardInfo;


  void setSelectedUnitId(String unitId) {
    if (_selectedUnitId != unitId) {
      _selectedUnitId = unitId;
      fetchData(); // 当单位ID改变时，重新拉取数据
    }
  }

  void setSelectedCompanyName(String companyName) {
    _selectedCompanyName = companyName;
  }


  Future<void> fetchData() async {
    _companyListData = CompanyListData.fromJson(StorageUtil().getJson(STORAGE_USER_COMPANY_KEY));
    _cardInfo = await UserAPI.getCountByCared();
    // 通知监听器（观察者）状态已经改变
    notifyListeners();
  }

}
