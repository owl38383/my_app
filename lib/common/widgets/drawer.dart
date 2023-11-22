import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

class MyDrawer extends StatefulWidget {
  final CompanyListData companyListData;
  final UserLoginRespData userInfoData;
  final String? selectedValue;
  final Function(CompanyListDataListInfoCompany) onItemSelected; // 新增的回调函数

  const MyDrawer({
    Key? key,
    required this.companyListData,
    this.selectedValue,
    required this.userInfoData,
    required this.onItemSelected, // 新增的回调函数
  }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: duSetHeight(44), left: duSetWidth(5)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Icon(
                      Icons.account_circle_sharp,
                      weight: 20,
                      size: 50,
                    ),
                  ),
                ),
                Container(
                  width: duSetWidth(10),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userInfoData.name,
                        style: TextStyle(
                          fontSize: duSetFontSize(16),
                        ),
                      ),
                      Text(
                        widget.userInfoData.enumUserRole.name,
                        style: TextStyle(
                          fontSize: duSetFontSize(12),
                        ),
                      ),
                      Text(
                        widget.userInfoData.companyName,
                        style: TextStyle(
                          fontSize: duSetFontSize(12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade500),
          ListTile(
            title: Text(widget.userInfoData.companyName),
            leading: Icon(
              Icons.home_rounded,
              color: widget.userInfoData.companyId == widget.selectedValue
                  ? Colors.blue // 选中项的背景颜色
                  : null,
            ),
            tileColor: widget.userInfoData.companyId == widget.selectedValue
                ? Colors.white // 选中项的背景颜色
                : null,
            onTap: () async {
              CompanyListDataListInfoCompany info = CompanyListDataListInfoCompany();
              info.companyId = widget.userInfoData.companyId.toString();
              info.companyName = widget.userInfoData.companyName;
              widget.onItemSelected(info);
              // 当点击列表项时，调用回调函数并更新 selectedValue
              await Future.delayed(Duration(milliseconds: 300));
              Scaffold.of(context).closeDrawer();
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 0),
              itemCount: widget.companyListData.list.length,
              itemBuilder: (context, index) {
                var item = widget.companyListData.list[index];
                return ListTile(
                  title: Text(item.infoCompany.companyName),
                  leading: Icon(
                    Icons.home_rounded,
                    color: item.infoCompany.companyId == widget.selectedValue
                        ? Colors.blue // 选中项的背景颜色
                        : null,
                  ),
                  tileColor: item.infoCompany.companyId == widget.selectedValue
                      ? Colors.white // 选中项的背景颜色
                      : null,
                  onTap: () async {
                    // 当点击列表项时，调用回调函数并更新 selectedValue
                    widget.onItemSelected(item.infoCompany);
                    await Future.delayed(Duration(milliseconds: 300));
                    Scaffold.of(context).closeDrawer();
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
