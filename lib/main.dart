import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/global.dart';

import 'common/router/router.dart';
import 'common/router/router.gr.dart';

void main() {
  Global.init().then((value) => runApp(const MyApp()));
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
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
