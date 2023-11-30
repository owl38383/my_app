import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';

@RoutePage()
class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  TextEditingController textEditingController = TextEditingController();
  MarketMineEntity _appMap = MarketMineEntity();
  List<MarketMineDataTicker> ticker = [];
  List<MarketMineDataGroups> groups = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadAll();
  }

  _loadAll() async {
    _appMap = await UserAPI.getMyApps();
    setState(() {
      ticker = _appMap.data.ticker;
      groups = _appMap.data.groups;
      groups.sort((a, b) => a.groupId.compareTo(b.groupId));
    });
  }

  _toApplication(BuildContext context, String path) {
    if (path.startsWith('http')) {
      path = path.replaceAll('81.70.154.161', '47.95.1.44');
      context.router.push(WebViewRoute(url: path, isReplace: true));
    } else {
      if(duGetRouterName(path).isNotEmpty){
        context.router.pushNamed(Uri.encodeFull(duGetRouterName(path)));
      }else{
        toastInfo(msg: '应用未开发');
      }
    }
  }

  Widget _buildBanner() {
    if (ticker.length == 0) {
      // 如果ticker列表为空，显示一些占位或提示信息
      return Center(
        child: Text('No data available'),
      );
    } else {
      // 如果有数据，构建PageView
      return Container(
        margin: EdgeInsets.only(top: 5),
        height: duSetHeight(180), // 设置一个明确的高度
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(Borders.primaryBorder),
          borderRadius: Radii.k6pxRadius,
        ),
        child: PageView.builder(
          itemCount: ticker.length,
          itemBuilder: (context, index) {
            String url = ticker[index].imgFilePath;
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(url, height: duSetHeight(180), fit: BoxFit.cover, scale: 1.0,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              }),
            );
          },
        ),
      );
    }
  }

  Widget _buildApplicationGroup() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: groups.map((group) {
        if (group.apps.length > 0) {
          return Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border.fromBorderSide(Borders.primaryBorder),
              borderRadius: Radii.k6pxRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  group.groupName,
                  style: TextStyle(
                    fontSize: duSetFontSize(12),
                  ),
                ),
                SizedBox(
                  height: duSetHeight(20),
                ),
                _buildApplicationList(apps: group.apps),
              ],
            ),
          );
        } else {
          return Container();
        }
      }).toList(),
    );
  }

  Widget _buildApplicationList({
    required List<dynamic> apps,
  }) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double parentWidth = constraints.maxWidth;

        return Container(
          width: double.infinity, // 或者直接使用 parentWidth
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: (parentWidth - 20.0) / 4 - 72, // ping
            runSpacing: 8.0, // 垂直间距（行间距）
            children: apps.map((e) {
              return applicationButton(
                imgUrl: e['app_icon'] ?? '',
                title: e['app_name'] ?? '',
                path: e['navigation'] ?? '',
                onPressTap: (String string) {
                  _toApplication(context, string);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('工作台'),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(),
        child: ListView(
          children: [
            inputTextSearch(
              controller: textEditingController,
              hintText: '搜索',
              marginTop: 5,
            ),
            _buildBanner(),
            _buildApplicationGroup(),
          ],
        ),
      ),
    );
  }
}
