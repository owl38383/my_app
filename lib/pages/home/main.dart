import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/home/home.dart';
import 'package:provider/provider.dart';

import '../../common/provider/data_provider.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EventProvider>(create: (_) => EventProvider()),
        ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider()),
        ChangeNotifierProvider<CompanyListProvider>(create: (_) => CompanyListProvider()),
      ],
      child: const HomePageProvide(),
    );
  }
}
