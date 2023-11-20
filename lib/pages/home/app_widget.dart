import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

Widget buildApps(List<dynamic> data) {
  return EasyRefresh.builder(
    onRefresh: () async {
      return IndicatorResult.success;
    },
    onLoad: () async {},
    childBuilder: (context, physics) {
      return Container(
        margin: EdgeInsets.only(top: duSetHeight(10)),
        padding: EdgeInsets.all(duSetHeight(5)),
        height: duSetHeight(180),
        decoration: BoxDecoration(
          color: Colors.white, // 设置Card的颜色
          border: Border.fromBorderSide(Borders.primaryBorder),
          borderRadius: Radii.k6pxRadius, // 可以根据需要调整圆角
          boxShadow: [
            Shadows.primaryShadow,
          ],
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 指定列数
            crossAxisSpacing: duSetHeight(10.0), // 列之间的间距
            mainAxisSpacing: duSetWidth(10.0), // 行之间的间距
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return buildGridItem(data[index]);
          },
        ),
      );
    },
  );
}

Widget buildGridItem(dynamic item) {
  // 根据需要自定义每个网格项的显示
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          item['app_icon'],
          width: 40.0, // 图片宽度
          height: 40.0, // 图片高度
          fit: BoxFit.cover,
        ),
        Text(
          '${item['app_name']}',
          maxLines: 1, // 设置只能一行显示
          overflow: TextOverflow.ellipsis, // 超出部分显示省略号
          style: TextStyle(fontSize: duSetFontSize(12.0)),
        ),
      ],
    ),
  );
}
