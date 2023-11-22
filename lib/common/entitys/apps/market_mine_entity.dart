import 'package:my_app/generated/json/base/json_field.dart';
import 'package:my_app/generated/json/market_mine_entity.g.dart';
import 'dart:convert';
export 'package:my_app/generated/json/market_mine_entity.g.dart';

@JsonSerializable()
class MarketMineEntity {
	late int code = 0;
	late String msg = '';
	@JSONField(name: "eng_msg")
	late String engMsg = '';
	late MarketMineData data;

	MarketMineEntity();

	factory MarketMineEntity.fromJson(Map<String, dynamic> json) => $MarketMineEntityFromJson(json);

	Map<String, dynamic> toJson() => $MarketMineEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MarketMineData {
	late List<MarketMineDataGroups> groups = [];
	late List<MarketMineDataTicker> ticker = [];

	MarketMineData();

	factory MarketMineData.fromJson(Map<String, dynamic> json) => $MarketMineDataFromJson(json);

	Map<String, dynamic> toJson() => $MarketMineDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MarketMineDataGroups {
	@JSONField(name: "group_id")
	late int groupId = 0;
	@JSONField(name: "group_name")
	late String groupName = '';
	@JSONField(name: "group_category")
	late String groupCategory = '';
	late int index = 0;
	late List<dynamic> apps = [];

	MarketMineDataGroups();

	factory MarketMineDataGroups.fromJson(Map<String, dynamic> json) => $MarketMineDataGroupsFromJson(json);

	Map<String, dynamic> toJson() => $MarketMineDataGroupsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MarketMineDataTicker {
	@JSONField(name: "ticker_id")
	late int tickerId = 0;
	late String title = '';
	late String desc = '';
	@JSONField(name: "img_file_path")
	late String imgFilePath = '';
	@JSONField(name: "link_addr")
	late String linkAddr = '';
	late int index = 0;
	@JSONField(name: "create_time")
	late String createTime = '';
	@JSONField(name: "update_time")
	late String updateTime = '';
	@JSONField(name: "creater_id")
	late int createrId = 0;
	@JSONField(name: "view_position")
	late int viewPosition = 0;

	MarketMineDataTicker();

	factory MarketMineDataTicker.fromJson(Map<String, dynamic> json) => $MarketMineDataTickerFromJson(json);

	Map<String, dynamic> toJson() => $MarketMineDataTickerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}