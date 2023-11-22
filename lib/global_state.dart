import 'package:flutter/material.dart';

class GlobalState extends ChangeNotifier {
  String selectedValue = '';
  String selectedValueName = '';

  void updateSelectedCompanyValue(String newValue) {
    selectedValue = newValue;
    notifyListeners(); // 通知监听器状态已更改
  }

  void updateSelectedCompanyName(String newValue) {
    selectedValueName = newValue;
    notifyListeners(); // 通知监听器状态已更改
  }
}
