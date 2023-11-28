import 'package:uuid/uuid.dart';

class UUidUtil {
  // 创建UUID生成器
  static var _uuid = Uuid();

  /// Generate a v4 (random) id
  static String uuid4() {
    return _uuid.v4();
  }

  /// Generate a v1 (time-based) id
  static String uuid1() {
    return _uuid.v1();
  }
}
