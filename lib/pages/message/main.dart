import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/pages/message/view_model/message_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MessageMain extends StatelessWidget {
  const MessageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessageViewMode()),
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
