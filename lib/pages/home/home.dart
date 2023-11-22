import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/global_state.dart';
import 'package:my_app/pages/home/home_provider.dart';
import 'package:provider/provider.dart';

import 'data_provider.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedValue = Provider.of<GlobalState>(context).selectedValue;
    String selectedValueName = Provider.of<GlobalState>(context).selectedValueName;
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: HomePageProvide(companyId: selectedValue,companyName: selectedValueName),
    );
  }
}

