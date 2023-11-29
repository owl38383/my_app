import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class EventMainPage extends StatelessWidget {
  const EventMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ],
      child: Row(
        children: [
          Expanded(
            child: AutoRouter(),
          )
        ],
      ),
    );
  }
}
