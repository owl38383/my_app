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
      padding: EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 207, 207, 207),
        border: Border.fromBorderSide(Borders.primaryBorder),
        borderRadius: Radii.k6pxRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(confirmType.length, (index) {
          EnumConfirmType item = confirmType[index];
          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectTag = item.type;
                widget.onTagTap(item.type);
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: selectTag == item.type ? Colors.white : null,
                  boxShadow: [
                    Shadows.primaryShadow,
                  ],
                  borderRadius: Radii.k6pxRadius,
                ),
                child: Center(
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
              ),
            ),
          );
        }),
      ),
    );
  }
}
