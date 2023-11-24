import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/provider/data_provider.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  final CompanyListData companyListData;
  final UserLoginRespData userInfoData;
  final String? selectedValue;
  final Function(CompanyListDataListInfoCompany) onItemSelected; // 新增的回调函数

  final VoidCallback? onPreessedSetting;
  final VoidCallback? onPreessedLogout;

  MyDrawer({
    Key? key,
    required this.companyListData,
    this.selectedValue,
    required this.userInfoData,
    required this.onItemSelected, // 新增的回调函数
    this.onPreessedSetting, // 新增的回调函数
    this.onPreessedLogout, // 新增的回调函数
  }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget _buildHeader() {
    return Container(
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
    );
  }

  Widget _buildList() {
    return EasyRefresh(
      onRefresh: (){
        // 请求单位数据
        Provider.of<CompanyListProvider>(context, listen: false).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        itemCount: widget.companyListData.list.length,
        itemBuilder: (context, index) {
          return _buildListItem(widget.companyListData.list[index]);
        },
      ),
    );
  }

  Widget _buildListItem(CompanyListDataList item) {
    return ListTile(
      title: Text(item.infoCompany.companyName),
      leading: Icon(
        Icons.home_rounded,
        color: item.infoCompany.companyId == widget.selectedValue
            ? Colors.blue // 选中项的背景颜色
            : null,
      ),
      tileColor: item.infoCompany.companyId == widget.selectedValue
          ? Colors.grey.shade500 // 选中项的背景颜色
          : null,
      subtitle: Text(item.infoCompany.thingType),
      onTap: () async {
        // 当点击列表项时，调用回调函数并更新 selectedValue
        widget.onItemSelected(item.infoCompany);
        await Future.delayed(const Duration(milliseconds: 300));
        Scaffold.of(context).closeDrawer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          _buildHeader(),
          Divider(color: Colors.grey.shade500),
          ListTile(
            title: Text(widget.userInfoData.companyName),
            leading: Icon(
              Icons.home_rounded,
              color: widget.userInfoData.companyId.toString() == widget.selectedValue
                  ? Colors.blue // 选中项的背景颜色
                  : null,
            ),
            tileColor: widget.userInfoData.companyId.toString() == widget.selectedValue
                ? Colors.grey.shade500 // 选中项的背景颜色
                : null,
            onTap: () async {
              CompanyListDataListInfoCompany info = CompanyListDataListInfoCompany();
              info.companyId = widget.userInfoData.companyId.toString();
              info.thingType = widget.userInfoData.companyType.toString();
              info.companyName = widget.userInfoData.companyName;
              widget.onItemSelected(info);
              // 当点击列表项时，调用回调函数并更新 selectedValue
              await Future.delayed(const Duration(milliseconds: 300));
              Scaffold.of(context).closeDrawer();
            },
          ),
          Expanded(
            child: _buildList(),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: widget.onPreessedLogout, icon: const Icon(Icons.logout)),
                IconButton(onPressed: widget.onPreessedSetting, icon: const Icon(Icons.settings)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
