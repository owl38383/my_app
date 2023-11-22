import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Text('消息'),
    );
  }
}


// class MapScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('高德地图示例'),
//       ),
//       body: AmapView(
//         onMapCreated: (controller) {
//           // 地图创建后的回调
//         },
//         amapOptions: AmapOptions(
//           compassEnabled: true,
//           zoomControlsEnabled: true,
//         ),
//       ),
//     );
//   }
// }