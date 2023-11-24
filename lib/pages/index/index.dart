import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';
import 'package:my_app/pages/home/main.dart';
import 'package:my_app/pages/main/main.dart';
import 'package:my_app/pages/sign_in/sign_in.dart';
import 'package:my_app/pages/welcome/welcome.dart';

@RoutePage()
class IndexPage extends StatelessWidget {

  final DeviceInfoUtil _deviceInfoUtil = DeviceInfoUtil();

  late Map<String, dynamic> _deviceInfo = {};

  void checkAndNavigateToPage(context) async {
    _deviceInfo = _deviceInfoUtil.getDeviceInfo();
    if(Global.isOfflineLogin){
      AutoRouter.of(context).replace(MainRoute());
    }else{
      AutoRouter.of(context).replace(SignInRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    checkAndNavigateToPage(context);

    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        child: const Text("跳转"),
        onPressed: () {
          context.pushRoute(const WelcomeRoute());
        },
      ),
    );
  }
}
