import 'package:flutter/cupertino.dart';
import 'package:my_app/common/utils/utils.dart';

Widget textLine(String text, {maxLines = 1, fontSize = 12.0}) {
  return Text(
    text,
    maxLines: 1, // 设置只能一行显示
    overflow: TextOverflow.ellipsis, // 超出部分显示省略号
    style: TextStyle(fontSize: duSetFontSize(fontSize)),
  );
}
