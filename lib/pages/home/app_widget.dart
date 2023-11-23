import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';

class BuildApps extends StatefulWidget {
  BuildApps({super.key});

  @override
  State<BuildApps> createState() => _BuildAppsState();
}

class _BuildAppsState extends State<BuildApps> {
  late List<dynamic> _appList = [];

  @override
  void initState() {
    super.initState();
    _loadAll();
  }

  _loadAll() async {
    MarketMineEntity _appMap = await UserAPI.getMyApps();
    for (var item in _appMap.data.groups) {
      _appList.addAll(item.apps);
    }
    _appList = _appList.toSet().toList();
    setState(() {});
  }

  Widget buildGridItem(dynamic item) {
    // 根据需要自定义每个网格项的显示
    return applicationButton(
        imgUrl: item['app_icon'],
        title: item['app_name'],
        path: item['navigation'],
        onPressTap: (String string) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(5)),
      padding: EdgeInsets.all(5), // Adjust as needed
      height: duSetHeight(180), // Adjust as needed
      width: double.infinity, // Expanded width
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(Borders.primaryBorder),
        borderRadius: Radii.k6pxRadius,
        boxShadow: [],
      ),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: _appList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildGridItem(_appList[index]);
        },
      ),
    );
  }
}
