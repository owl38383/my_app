import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

/// 输入框
Widget inputTextEdit({
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  required String hintText,
  bool isPassword = false,
  double marginTop = 15,
}) {
  return Container(
    height: duSetHeight(44),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    decoration: const BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 9),
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w400,
        fontSize: duSetFontSize(18),
      ),
      maxLines: 1,
      autocorrect: false, // 自动纠正
      obscureText: isPassword, // 隐藏输入内容, 密码框
    ),
  );
}

/// 输入框
Widget inputTextSearch({
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  required String hintText,
  double marginTop = 15,
}) {
  return Container(
    height: duSetHeight(44),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 9),
          border: InputBorder.none,
          hintStyle: TextStyle()),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w400,
        fontSize: duSetFontSize(14),
      ),
      maxLines: 1,
      autocorrect: false, // 自动纠正
    ),
  );
}
