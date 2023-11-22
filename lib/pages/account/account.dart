import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 侧边栏示例'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // 切换侧边栏的显示状态
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: MyContent(),
    );
  }
}
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              '侧边栏标题',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('选项1'),
            onTap: () {
              // 处理选项1的点击事件
              Navigator.pop(context); // 关闭侧边栏
            },
          ),
          ListTile(
            title: Text('选项2'),
            onTap: () {
              // 处理选项2的点击事件
              Navigator.pop(context); // 关闭侧边栏
            },
          ),
          // 添加更多的列表项...
        ],
      ),
    );
  }
}

class MyContent extends StatefulWidget {
  @override
  _MyContentState createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text('主页面内容'),
      ),
    );
  }
}