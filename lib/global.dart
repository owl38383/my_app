import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/common/entitys/user_login_resp_entity.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

/// 全局配置
class Global {
  /// 用户配置
  static UserLoginRespEntity profile = UserLoginRespEntity();

  /// 是否 release
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  /// init
  static Future init() async {
    // 运行初始
    WidgetsFlutterBinding.ensureInitialized();
    // 工具初始
    await DeviceInfoUtil().initDeviceInfo();
    await StorageUtil().init();
    HttpUtil();

    //
    //   // 读取离线用户信息
    //   var _profileJSON = StorageUtil().getJSON(STORAGE_USER_PROFILE_KEY);
    //   if (_profileJSON != null) {
    //     profile = UserLoginResponseEntity.fromJson(_profileJSON);
    //   }
    //
    //   // http 缓存

    // android 状态栏为透明的沉浸
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  // 持久化 用户信息
  static Future<bool> saveProfile(UserLoginRespEntity userResponse) {
    profile = userResponse;
    StorageUtil().setString(STORAGE_USER_TOKEN_KEY, userResponse.data.token);
    return StorageUtil().setJson(STORAGE_USER_PROFILE_KEY, userResponse);
  }
}
