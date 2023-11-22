import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

import 'device.dart';

/// SHA256
String duSHA256(String input) {
  String salt = 'EIpWsyfiy@R@X#qn17!StJNdZK1fFF8iV6ffN!goZkqt#JxO'; // 加盐
  var bytes = utf8.encode(input + salt);
  var digest = sha256.convert(bytes);

  return digest.toString();
}

Map<String, dynamic> duHttpBefore(String type, Map<String,dynamic> data, String channel) {
  final DeviceInfoUtil deviceInfoUtil = DeviceInfoUtil();
  // print(_generateMD5("method=get&sign_key=Fubang.119*(&uid=9000100000000000101&view_type=web&cc=G1000&cv=FB2.1.1.00_W1.0&ua=WebKit&sign_time=1700401463&sign_random=8437465&imei=1520931947&imsi=222222222&sign_id=10000"));
  String signKey = 'Fubang.119*(';

  var res = {
    'appVersion': deviceInfoUtil.getAppVersionName(),
    'platform': "${deviceInfoUtil.getDeviceType()}${deviceInfoUtil.getAppVersionName()}",
  };

  // 设备信息
  Map<String, dynamic> obj = {
    'uid': "",
    'view_type': "web",
    'cc': "G1000",
    'cv': "FB2.1.1.00_W1.0",
    'ua': "WebKit",
    'sign_time': "1520931947",
    'sign_random': "Y2zX0ZNi",
    'imei': "1520931947",
    'imsi': "222222222",
    'sign_id': "10000",
  };
  
  Random random = Random();
  int min = 1000000;
  int max = 9999999;

  // obj['cv'] = '$channel${res['appVersion']}.00_${res['platform']}';
  // obj['ua'] =  deviceInfoUtil.getDeviceModel();
  obj['sign_time'] = (DateTime.now().millisecondsSinceEpoch / 1000).ceil().toString();
  obj['sign_random'] =  (min + random.nextInt(max - min)).toString();
  // 加密
  if (type == 'GET' || type == 'delete') {
    obj.addAll(data);
    obj.removeWhere((key, value) => value == null || value == '');
    String href = '';
    data.forEach((index, value) {
      href += '${'&' + index}=${Uri.encodeComponent(value.toString())}';
    });
    String str = 'method=$type&sign_key=$signKey&$href';
    obj['sign'] = _generateMD5(str);
    return obj;
  } else {
    String href = '';
    data.forEach((index, value) {
      href += '${'&' + index}=${Uri.encodeComponent(value.toString())}';
    });
    String str = 'method=$type&sign_key=$signKey&$href';
    obj['sign'] = _generateMD5(str);
    return {
      'params':obj,
      'data': data,
    };
  }
}

String _generateMD5(String input) {
  return md5.convert(utf8.encode(input)).toString().toUpperCase();
}
