import 'package:flutter/material.dart';
import 'package:my_app/common/values/values.dart';

/// 透明背景 AppBar
AppBar transparentAppBar({
  required BuildContext context,
  List<Widget>? actions,
  String title = '',
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(title),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.primaryText,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: actions,
  );
}

/// 透明背景 AppBar
AppBar transparentAppBarDiy({
  required BuildContext context,
  List<Widget>? actions,
  Widget? leading,
  String title = '',
}) {
  return AppBar(
    // backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(title),
    leading: leading,
    actions: actions,
  );
}
