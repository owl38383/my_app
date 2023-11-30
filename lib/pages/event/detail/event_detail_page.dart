import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventDetailPage extends StatefulWidget {
  const EventDetailPage({super.key});

  @override
  State<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('detail'),
      ),
    );
  }
}
