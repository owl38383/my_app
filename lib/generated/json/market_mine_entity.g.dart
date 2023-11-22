import 'package:my_app/generated/json/base/json_convert_content.dart';
import 'package:my_app/common/entitys/apps/market_mine_entity.dart';

MarketMineEntity $MarketMineEntityFromJson(Map<String, dynamic> json) {
  final MarketMineEntity marketMineEntity = MarketMineEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    marketMineEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    marketMineEntity.msg = msg;
  }
  final String? engMsg = jsonConvert.convert<String>(json['eng_msg']);
  if (engMsg != null) {
    marketMineEntity.engMsg = engMsg;
  }
  final MarketMineData? data = jsonConvert.convert<MarketMineData>(json['data']);
  if (data != null) {
    marketMineEntity.data = data;
  }
  return marketMineEntity;
}

Map<String, dynamic> $MarketMineEntityToJson(MarketMineEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['eng_msg'] = entity.engMsg;
  data['data'] = entity.data.toJson();
  return data;
}

extension MarketMineEntityExtension on MarketMineEntity {
  MarketMineEntity copyWith({
    int? code,
    String? msg,
    String? engMsg,
    MarketMineData? data,
  }) {
    return MarketMineEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..engMsg = engMsg ?? this.engMsg
      ..data = data ?? this.data;
  }
}

MarketMineData $MarketMineDataFromJson(Map<String, dynamic> json) {
  final MarketMineData marketMineData = MarketMineData();
  final List<MarketMineDataGroups>? groups = (json['groups'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<MarketMineDataGroups>(e) as MarketMineDataGroups).toList();
  if (groups != null) {
    marketMineData.groups = groups;
  }
  final List<MarketMineDataTicker>? ticker = (json['ticker'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<MarketMineDataTicker>(e) as MarketMineDataTicker).toList();
  if (ticker != null) {
    marketMineData.ticker = ticker;
  }
  return marketMineData;
}

Map<String, dynamic> $MarketMineDataToJson(MarketMineData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['groups'] = entity.groups.map((v) => v.toJson()).toList();
  data['ticker'] = entity.ticker.map((v) => v.toJson()).toList();
  return data;
}

extension MarketMineDataExtension on MarketMineData {
  MarketMineData copyWith({
    List<MarketMineDataGroups>? groups,
    List<MarketMineDataTicker>? ticker,
  }) {
    return MarketMineData()
      ..groups = groups ?? this.groups
      ..ticker = ticker ?? this.ticker;
  }
}

MarketMineDataGroups $MarketMineDataGroupsFromJson(Map<String, dynamic> json) {
  final MarketMineDataGroups marketMineDataGroups = MarketMineDataGroups();
  final int? groupId = jsonConvert.convert<int>(json['group_id']);
  if (groupId != null) {
    marketMineDataGroups.groupId = groupId;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    marketMineDataGroups.groupName = groupName;
  }
  final String? groupCategory = jsonConvert.convert<String>(json['group_category']);
  if (groupCategory != null) {
    marketMineDataGroups.groupCategory = groupCategory;
  }
  final int? index = jsonConvert.convert<int>(json['index']);
  if (index != null) {
    marketMineDataGroups.index = index;
  }
  final List<dynamic>? apps = (json['apps'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (apps != null) {
    marketMineDataGroups.apps = apps;
  }
  return marketMineDataGroups;
}

Map<String, dynamic> $MarketMineDataGroupsToJson(MarketMineDataGroups entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['group_id'] = entity.groupId;
  data['group_name'] = entity.groupName;
  data['group_category'] = entity.groupCategory;
  data['index'] = entity.index;
  data['apps'] = entity.apps;
  return data;
}

extension MarketMineDataGroupsExtension on MarketMineDataGroups {
  MarketMineDataGroups copyWith({
    int? groupId,
    String? groupName,
    String? groupCategory,
    int? index,
    List<dynamic>? apps,
  }) {
    return MarketMineDataGroups()
      ..groupId = groupId ?? this.groupId
      ..groupName = groupName ?? this.groupName
      ..groupCategory = groupCategory ?? this.groupCategory
      ..index = index ?? this.index
      ..apps = apps ?? this.apps;
  }
}

MarketMineDataTicker $MarketMineDataTickerFromJson(Map<String, dynamic> json) {
  final MarketMineDataTicker marketMineDataTicker = MarketMineDataTicker();
  final int? tickerId = jsonConvert.convert<int>(json['ticker_id']);
  if (tickerId != null) {
    marketMineDataTicker.tickerId = tickerId;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    marketMineDataTicker.title = title;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    marketMineDataTicker.desc = desc;
  }
  final String? imgFilePath = jsonConvert.convert<String>(json['img_file_path']);
  if (imgFilePath != null) {
    marketMineDataTicker.imgFilePath = imgFilePath;
  }
  final String? linkAddr = jsonConvert.convert<String>(json['link_addr']);
  if (linkAddr != null) {
    marketMineDataTicker.linkAddr = linkAddr;
  }
  final int? index = jsonConvert.convert<int>(json['index']);
  if (index != null) {
    marketMineDataTicker.index = index;
  }
  final String? createTime = jsonConvert.convert<String>(json['create_time']);
  if (createTime != null) {
    marketMineDataTicker.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['update_time']);
  if (updateTime != null) {
    marketMineDataTicker.updateTime = updateTime;
  }
  final int? createrId = jsonConvert.convert<int>(json['creater_id']);
  if (createrId != null) {
    marketMineDataTicker.createrId = createrId;
  }
  final int? viewPosition = jsonConvert.convert<int>(json['view_position']);
  if (viewPosition != null) {
    marketMineDataTicker.viewPosition = viewPosition;
  }
  return marketMineDataTicker;
}

Map<String, dynamic> $MarketMineDataTickerToJson(MarketMineDataTicker entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ticker_id'] = entity.tickerId;
  data['title'] = entity.title;
  data['desc'] = entity.desc;
  data['img_file_path'] = entity.imgFilePath;
  data['link_addr'] = entity.linkAddr;
  data['index'] = entity.index;
  data['create_time'] = entity.createTime;
  data['update_time'] = entity.updateTime;
  data['creater_id'] = entity.createrId;
  data['view_position'] = entity.viewPosition;
  return data;
}

extension MarketMineDataTickerExtension on MarketMineDataTicker {
  MarketMineDataTicker copyWith({
    int? tickerId,
    String? title,
    String? desc,
    String? imgFilePath,
    String? linkAddr,
    int? index,
    String? createTime,
    String? updateTime,
    int? createrId,
    int? viewPosition,
  }) {
    return MarketMineDataTicker()
      ..tickerId = tickerId ?? this.tickerId
      ..title = title ?? this.title
      ..desc = desc ?? this.desc
      ..imgFilePath = imgFilePath ?? this.imgFilePath
      ..linkAddr = linkAddr ?? this.linkAddr
      ..index = index ?? this.index
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..createrId = createrId ?? this.createrId
      ..viewPosition = viewPosition ?? this.viewPosition;
  }
}