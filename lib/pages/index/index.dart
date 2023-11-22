import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/common/utils/utils.dart';

@RoutePage()
class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final DeviceInfoUtil _deviceInfoUtil = DeviceInfoUtil();

  late Map<String, dynamic> _deviceInfo = {};

  @override
  void initState() {
    super.initState();
    _deviceInfo = _deviceInfoUtil.getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设备信息'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: const Text("跳转"),
              onPressed: () {
                context.pushRoute(const WelcomeRoute());
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _deviceInfo.length,
                itemBuilder: (context, index) {
                  String key = _deviceInfo.keys.elementAt(index);
                  dynamic value = _deviceInfo[key];
                  return ListTile(
                    title: Text(key),
                    subtitle: Text(value.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
