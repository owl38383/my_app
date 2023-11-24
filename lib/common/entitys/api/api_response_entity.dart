import 'dart:convert';

import 'package:my_app/common/entitys/api/api_response_entity.g.dart';
import 'package:my_app/generated/json/base/json_convert_content.dart';

export 'package:my_app/common/entitys/api/api_response_entity.g.dart';

class ApiResponseEntity<T> {

  int? code;
  String? message;
  T? data;

  ApiResponseEntity();

  factory ApiResponseEntity.fromJson(Map<String, dynamic> json) => $ApiResponseEntityFromJson<T>(json);

  Map<String, dynamic> toJson() => $ApiResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

ApiResponseEntity<T> $ApiResponseEntityFromJson<T>(Map<String, dynamic> json) {
  final ApiResponseEntity<T> apiResponseEntity = ApiResponseEntity<T>();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    apiResponseEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    apiResponseEntity.message = message;
  }
  final T? data = jsonConvert.convert<T>(json['data']);
  if (data != null) {
    apiResponseEntity.data = data;
  }
  return apiResponseEntity;
}
