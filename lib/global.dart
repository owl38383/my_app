import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// 全局配置
class Global {
  /// 用户配置
  static UserLoginRespData profile = UserLoginRespData();

  /// 是否 release
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  /// websocket 实例
  ///
  late WebSocketChannel channel;

  /// 所选单位
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

    // 读取离线用户信息
    var profileJSON =
        StorageUtil().getJson(STORAGE_USER_PROFILE_KEY, defaultValue: {});
    if (profileJSON.isNotEmpty) {
      profile = UserLoginRespData.fromJson(profileJSON);
      isOfflineLogin = true;
    }
    // 判断是否第一次登录
    isFirstOpen =
        StorageUtil().getBool(STORAGE_USER_FIRST_KEY, defaultValue: false);

    // android 状态栏为透明的沉浸
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
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

  // 持久化所选单位
  static Future<bool> saveSelectCompant() {
    return StorageUtil().setJson(STORAGE_USER_SELECT_COMPANY_KEY, {});
  }
}
