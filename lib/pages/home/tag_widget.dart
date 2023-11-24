import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/provider/data_provider.dart';
import 'package:provider/provider.dart';

class EnumConfirmType {
  late String type;
  late String name;
  late List<EnumConfirmType>? children = [];
  EnumConfirmType(this.type, this.name, this.children);
}

class TabAction extends StatefulWidget {
  final Function(String) onTagTap;

  const TabAction({super.key, required this.onTagTap});

  @override
  State<TabAction> createState() => _TabActionState();
}

class _TabActionState extends State<TabAction> {
  List<EnumConfirmType> confirmType = [];
  late String selectTag;

  @override
  void initState() {
    super.initState();
    confirmType.add(EnumConfirmType('alarm', '火警', []));
    confirmType.add(EnumConfirmType('fault', '故障', []));
    confirmType.add(EnumConfirmType('abnormal', '异常', []));
    // confirmType.add(EnumConfirmType('abnormal', '我的待办', [
    //   EnumConfirmType('execute', '任务执行', []),
    //   EnumConfirmType('examine', '任务审批', []),
    // ]));
    selectTag = confirmType[0].type;
    widget.onTagTap(selectTag);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(5)),
      padding: EdgeInsets.only(top: duSetHeight(5), bottom: duSetHeight(5)),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(Borders.primaryBorder),
        borderRadius: Radii.k6pxRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(confirmType.length, (index) {
          EnumConfirmType item = confirmType[index];
          return GestureDetector(
            onTap: () {
              selectTag = item.type;
              widget.onTagTap(item.type);
              setState(() {});
            },
            child: Container(
              width: duSetWidth(80),
              height: duSetHeight(30),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: selectTag == item.type
                        ? Colors.blueAccent
                        : Colors.white,
                  ),
                ),
              ),
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: duSetFontSize(14),
                  height: 1,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
