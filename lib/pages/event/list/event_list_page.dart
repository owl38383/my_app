import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/event/detail/event_detail_page.dart';

@RoutePage()
class EventListPage extends StatefulWidget {
  const EventListPage({super.key});

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            child: Text('点击/eventdetail'),
            onPressed: () {
              context.router.pushNamed('/event-detail');
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            child: Text('点击 EventDetailPage'),
            onPressed: () {
              context.pushRoute(EventDetailRoute());
            },
          ),
        ),
      ],
    );
  }
}
