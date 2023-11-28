import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/device/device_list_entity.dart';
import 'package:my_app/common/entitys/device/device_detail_entity.dart';


DeviceListEntity $DeviceListEntityFromJson(Map<String, dynamic> json) {
  final DeviceListEntity deviceListEntity = DeviceListEntity();
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    deviceListEntity.total = total;
  }
  final List<DeviceDetailEntity>? list = (json['list'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<DeviceDetailEntity>(e) as DeviceDetailEntity).toList();
  if (list != null) {
    deviceListEntity.list = list;
  }
  return deviceListEntity;
}

Map<String, dynamic> $DeviceListEntityToJson(DeviceListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['total'] = entity.total;
  data['list'] = entity.list.map((v) => v.toJson()).toList();
  return data;
}

extension DeviceListEntityExtension on DeviceListEntity {
  DeviceListEntity copyWith({
    int? total,
    List<DeviceDetailEntity>? list,
  }) {
    return DeviceListEntity()
      ..total = total ?? this.total
      ..list = list ?? this.list;
  }
}