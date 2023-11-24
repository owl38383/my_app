import 'package:flutter/foundation.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

/// 分页状态管理
class EventProvider<T> extends ChangeNotifier {
  int pageNo = 0;
  int pageSize = 10;
  List<T> data = <T>[];

}
