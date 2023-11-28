import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_user_type_entity.dart';

EnumUserTypeEntity $EnumUserTypeEntityFromJson(Map<String, dynamic> json) {
  final EnumUserTypeEntity enumUserTypeEntity = EnumUserTypeEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    enumUserTypeEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumUserTypeEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumUserTypeEntity.engName = engName;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    enumUserTypeEntity.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    enumUserTypeEntity.usedFlag = usedFlag;
  }
  return enumUserTypeEntity;
}

Map<String, dynamic> $EnumUserTypeEntityToJson(EnumUserTypeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  return data;
}

extension EnumUserTypeEntityExtension on EnumUserTypeEntity {
  EnumUserTypeEntity copyWith({
    int? id,
    String? name,
    String? engName,
    String? companyClass,
    int? usedFlag,
  }) {
    return EnumUserTypeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag;
  }
}