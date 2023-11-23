import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

/// 扁平圆角按钮
Widget btnFlatButtonWidget({
  required VoidCallback onPressed,
  double width = 140,
  double height = 44,
  Color gbColor = AppColors.primaryElement,
  String title = "button",
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  String fontName = "Montserrat",
  FontWeight fontWeight = FontWeight.w400,
}) {
  return SizedBox(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: Radii.k6pxRadius,
          ),
          backgroundColor: gbColor),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontName,
          fontWeight: fontWeight,
          fontSize: duSetFontSize(fontSize),
          height: 1,
        ),
      ),
    ),
  );
}

/// 第三方按钮
Widget btnFlatButtonBorderOnlyWidget({
  required VoidCallback onPressed,
  double width = 88,
  double height = 44,
  required String iconFileName,
}) {
  return SizedBox(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          side: Borders.primaryBorder,
          borderRadius: Radii.k6pxRadius,
        ),
      ),
      child: Image.asset(
        "assets/images/icons-$iconFileName.png",
      ),
    ),
  );
}

/// 应用的图片按钮
Widget applicationButton(
    {required String imgUrl,
    required String title,
    required String path,
    required Function(String) onPressTap,
    double width = 72,
    double height = 72,
    String? pathOption}) {
  return GestureDetector(
      onTap: () {
        onPressTap(path);
      },
      child: SizedBox(
        width: duSetWidth(width),
        height: duSetHeight(height),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              imgUrl,
              fit: BoxFit.cover,
              width: duSetWidth(50),
              height: duSetHeight(50),
            ),
            Text(
              title,
              maxLines: 1, // 设置只能一行显示
              overflow: TextOverflow.ellipsis, // 超出部分显示省略号
              style: TextStyle(fontSize: duSetFontSize(12.0)),
            ),
          ],
        ),
      ));
}
