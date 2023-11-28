import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/enums/enum_user_role_entity.dart';

EnumUserRoleEntity $EnumUserRoleEntityFromJson(Map<String, dynamic> json) {
  final EnumUserRoleEntity enumUserRoleEntity = EnumUserRoleEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    enumUserRoleEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    enumUserRoleEntity.name = name;
  }
  final String? engName = jsonConvert.convert<String>(json['eng_name']);
  if (engName != null) {
    enumUserRoleEntity.engName = engName;
  }
  final int? enumUserType = jsonConvert.convert<int>(json['enum_user_type']);
  if (enumUserType != null) {
    enumUserRoleEntity.enumUserType = enumUserType;
  }
  final String? companyClass = jsonConvert.convert<String>(json['company_class']);
  if (companyClass != null) {
    enumUserRoleEntity.companyClass = companyClass;
  }
  final int? usedFlag = jsonConvert.convert<int>(json['used_flag']);
  if (usedFlag != null) {
    enumUserRoleEntity.usedFlag = usedFlag;
  }
  final int? isAdmin = jsonConvert.convert<int>(json['is_admin']);
  if (isAdmin != null) {
    enumUserRoleEntity.isAdmin = isAdmin;
  }
  return enumUserRoleEntity;
}

Map<String, dynamic> $EnumUserRoleEntityToJson(EnumUserRoleEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['eng_name'] = entity.engName;
  data['enum_user_type'] = entity.enumUserType;
  data['company_class'] = entity.companyClass;
  data['used_flag'] = entity.usedFlag;
  data['is_admin'] = entity.isAdmin;
  return data;
}

extension EnumUserRoleEntityExtension on EnumUserRoleEntity {
  EnumUserRoleEntity copyWith({
    int? id,
    String? name,
    String? engName,
    int? enumUserType,
    String? companyClass,
    int? usedFlag,
    int? isAdmin,
  }) {
    return EnumUserRoleEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..engName = engName ?? this.engName
      ..enumUserType = enumUserType ?? this.enumUserType
      ..companyClass = companyClass ?? this.companyClass
      ..usedFlag = usedFlag ?? this.usedFlag
      ..isAdmin = isAdmin ?? this.isAdmin;
  }
}