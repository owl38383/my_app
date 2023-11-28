import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/screen.dart';
import 'package:my_app/global.dart';

@RoutePage()
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late UserLoginRespData userLoginRespData;
  List accountList = [];
  @override
  void initState() {
    userLoginRespData = Global.profile;
    super.initState();
    accountList.add({'name': '张三', 'account': '13333333333'});
    accountList.add({'name': '里斯', 'account': '13333563333'});
    accountList.add({'name': '汪芜', 'account': '13333333334'});
    accountList.add({'name': '韩流', 'account': '13337733333'});
    accountList.add({'name': '钱七', 'account': '13337733323'});
  }

  _showDialog() {
    // 点击按钮时展示弹窗
    // 点击按钮时展示弹窗
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('切换账号'),
          content: Container(
            height: 200, // 调整列表高度
            width: 300, // 调整列表宽度
            child: ListView.builder(
              itemCount: accountList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(accountList[index]['name']),
                  subtitle: Text(accountList[index]['account']),
                  trailing: Text('当前登录'),
                  onTap: () {},
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // 点击按钮后关闭弹窗
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: duSetHeight(44)),
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 头像
            Center(
              child: Icon(
                Icons.people_rounded,
                size: duSetFontSize(80),
              ),
            ),
            // 个人描述
            Text(userLoginRespData.account),
            Text(userLoginRespData.enumUserRole.name),
            Text(userLoginRespData.companyName),
            // 账号管理

            // 切换账号
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: duSetHeight(40)),
              child: ElevatedButton(
                onPressed: _showDialog,
                child: Text('切换账号'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
