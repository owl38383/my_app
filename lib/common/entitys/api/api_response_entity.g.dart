import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/api/api_response_entity.dart';

ApiResponseEntity $ApiResponseEntityFromJson(Map<String, dynamic> json) {
  final ApiResponseEntity apiResponseEntity = ApiResponseEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    apiResponseEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    apiResponseEntity.message = message;
  }
  final dynamic data = json['data'];
  if (data != null) {
    apiResponseEntity.data = data;
  }
  return apiResponseEntity;
}

Map<String, dynamic> $ApiResponseEntityToJson(ApiResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['data'] = entity.data;
  return data;
}

extension ApiResponseEntityExtension on ApiResponseEntity {
  ApiResponseEntity copyWith({
    int? code,
    String? message,
    dynamic data,
  }) {
    return ApiResponseEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}