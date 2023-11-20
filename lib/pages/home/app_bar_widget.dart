import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

AppBar buildAppBar<T>({
  required BuildContext context,
  required List<dynamic> companyList,
  required ValueChanged<T?> onChanged,
  required T selectedValue,
}) {
  return AppBar(
    // backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(''),
    leading: IconButton(
      icon: Icon(Icons.scanner, color: AppColors.primaryElement),
      onPressed: () {},
    ),
    actions: [
      Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: DropdownButton<T>(
            value: selectedValue,
            onChanged: onChanged,
            items: companyList.map((dynamic item) {
              return DropdownMenuItem<T>(
                value: item['info_company']['company_id'],
                child: Text(item['info_company']['company_name']),
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}