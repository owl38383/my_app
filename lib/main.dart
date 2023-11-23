import 'package:flutter/material.dart';
import 'package:my_app/global.dart';
import 'package:provider/provider.dart';

import 'common/router/router.dart';
import 'global_state.dart';

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
