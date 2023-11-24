import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

/// 全局配置
class Global {
  /// 用户配置
  static UserLoginRespData profile = UserLoginRespData();

  /// 是否 release
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  static Map selectCompany = {
    'companyId': '',
    'companyType': '',
    'companyName': '',
  };
  static bool isFirstOpen = false;
  static bool isOfflineLogin = false;

  /// init
  static Future init() async {
    // 运行初始
    WidgetsFlutterBinding.ensureInitialized();
    // 工具初始
    await DeviceInfoUtil().initDeviceInfo();
    await StorageUtil().init();
    HttpUtil();
    StorageUtil().remove(STORAGE_USER_PROFILE_KEY);

    // 读取离线用户信息
    var profileJSON = StorageUtil().getJson(STORAGE_USER_PROFILE_KEY,defaultValue: {});
    print('profileJSON');
    print(profileJSON);
    if (profileJSON.isNotEmpty) {
      profile = UserLoginRespData.fromJson(profileJSON);
      selectCompany['companyId'] = profile.companyId.toString();
      selectCompany['companyType'] = profile.companyType.toString();
      selectCompany['companyName'] = profile.companyName.toString();
      isOfflineLogin = true;
    }
    // 判断是否第一次登录
    isFirstOpen = StorageUtil().getBool(STORAGE_USER_FIRST_KEY, defaultValue: false);

    // android 状态栏为透明的沉浸
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  // 持久化 用户信息
  static Future<bool> saveProfile(UserLoginRespEntity userResponse) {
    profile = userResponse.data;
    selectCompany['companyId'] = userResponse.data.companyId.toString();
    selectCompany['companyType'] = userResponse.data.companyType.toString();
    selectCompany['companyName'] = userResponse.data.companyName.toString();
    StorageUtil().setString(STORAGE_USER_TOKEN_KEY, userResponse.data.token);
    return StorageUtil().setJson(STORAGE_USER_PROFILE_KEY, userResponse.data);
  }

  static bool removeProfile() {
    StorageUtil().remove(STORAGE_USER_TOKEN_KEY);
    StorageUtil().remove(STORAGE_USER_PROFILE_KEY);
    return true;
  }
}
