import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/utils/screen.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: duSetHeight(44)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_rounded,
                  size: duSetFontSize(80),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
