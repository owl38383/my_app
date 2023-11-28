import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/pages/device/list/device_list_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DeviceMain extends StatelessWidget {
  const DeviceMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DeviceListViewModel>(create: (_) => DeviceListViewModel()),
        ChangeNotifierProvider<DeviceClassTypeViewModel>(create: (_) => DeviceClassTypeViewModel()),
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
