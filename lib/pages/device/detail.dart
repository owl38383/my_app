import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class DeviceDetailPage extends StatefulWidget {
  const DeviceDetailPage({super.key});

  @override
  State<DeviceDetailPage> createState() => _DeviceDetailPageState();
}

class _DeviceDetailPageState extends State<DeviceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: const Text('data'),);
  }
}
