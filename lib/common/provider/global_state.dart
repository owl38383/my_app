import 'package:flutter/material.dart';
import 'package:my_app/global.dart';

class GlobalState extends ChangeNotifier {
  late Map companyInfo = {
    "companyId": '',
    "companyType": '',
    "companyName": '',
  };

  void updateSelectCompanyInfo(
      String companyId, String companyType, String companyName) {
    companyInfo = {
      "companyId": companyId,
      "companyType": companyType,
      "companyName": companyName,
    };
    Global.selectCompany = companyInfo;
    notifyListeners(); // 通知监听器状态已更改
  }

  String getCompanyId() {
    return companyInfo['companyId'];
  }

  String getCompanyName() {
    return companyInfo['companyName'];
  }
}
