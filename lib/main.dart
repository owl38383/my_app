import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/global.dart';
import 'package:provider/provider.dart';

import 'common/router/router.dart';
import 'common/provider/global_state.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  Global.init().then((value) => runApp(
        MultiProvider(
          providers: [
            Provider<GlobalState>(create: (_) => GlobalState()),
          ],
          child: const MyApp(),
        ),
      ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // 高度去掉 顶部、底部 导航
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812 - 44 - 34),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Color.fromARGB(255, 231, 226, 226),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
