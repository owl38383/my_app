import 'package:flutter/material.dart';
import 'package:my_app/global.dart';
import 'package:provider/provider.dart';

import 'common/router/router.dart';
import 'global_state.dart';

void main() {
  Global.init().then((value) => runApp(
        ChangeNotifierProvider(
          create: (BuildContext context) {
            Provider<GlobalState>(create: (_) => GlobalState());
          },
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
