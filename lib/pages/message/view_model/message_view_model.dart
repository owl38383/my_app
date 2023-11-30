import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/global.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class MessageEntity {
  String sessionId;
  String sessionType;
  List<MessageDetail> messageList = [];

  MessageEntity(this.sessionId, this.sessionType);
}

class MessageDetail {
  late String uuid;
  String sendId;
  String sendTo;
  String sendToType;
  int sendTime;
  String sendContent;
  String sendContentType;
  int sendStatus = -1; // 成功 0  失败 -1

  MessageDetail(this.sendId, this.sendTo, this.sendToType, this.sendTime, this.sendContent, this.sendContentType);

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'sendId': sendId,
      'sendTo': sendTo,
      'sendToType': sendToType,
      'sendTime': sendTime,
      'sendContent': sendContent,
      'sendContentType': sendContentType,
    };
  }

  factory MessageDetail.fromJson(Map<String, dynamic> maps) {
    MessageDetail messageDetail = MessageDetail(
      maps['sendId'],
      maps['sendTo'],
      maps['sendToType'],
      maps['sendTime'],
      maps['sendContent'],
      maps['sendContentType'],
    );
    messageDetail.uuid = maps['uuid'];
    return messageDetail;
  }
}

class MessageViewMode extends ChangeNotifier {
  List<MessageEntity> groupMessage = [];

  final ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  late IOWebSocketChannel channel;
  late WebSocketManager webSocketManager;

  init() {
    print('init');
    if (groupMessage.length == 0) {
      groupMessage.add(MessageEntity('1', 'user'));
      groupMessage.add(MessageEntity('2', 'room'));
    }
    final String wsUrl = 'ws://192.168.8.10:9010?uid=${Global.profile.userId}';
    webSocketManager = WebSocketManager();
    webSocketManager.connectWebSocket(wsUrl);
    channel = webSocketManager.channel;
    channel.stream.listen((event) {
      print(event);
      Map<String, dynamic> msg = jsonDecode(event);
      MessageDetail messageDetail = MessageDetail.fromJson(msg);
      bool isIndex = false;
      for (var element in groupMessage) {
        if (Global.profile.userId == msg['sendId']) return;
        print(messageDetail.sendTo + ":::" + element.sessionId);
        if (messageDetail.sendToType == 'room' && messageDetail.sendTo == element.sessionId) {
          element.messageList.add(messageDetail);
          isIndex = true;
        } else if (messageDetail.sendToType == 'user' && messageDetail.sendId == element.sessionId) {
          element.messageList.add(messageDetail);
          isIndex = true;
        }
      }
      if (isIndex == false) {
        addMessageItem(msg['sendId'], msg['sendToType']).messageList.add(messageDetail);
      }

      notifyListeners();
    });
  }

  MessageEntity getMessageBySessionId(String sessionId) {
    MessageEntity messageEntity = MessageEntity('-1', 'user');
    for (var element in groupMessage) {
      if (element.sessionId == sessionId) {
        messageEntity = element;
      }
    }
    return messageEntity;
  }

  bool addMessage(String sessionId, MessageDetail messageDetail) {
    bool isAdd = false;
    messageDetail.uuid = UUidUtil.uuid1();
    for (var element in groupMessage) {
      if (element.sessionId == sessionId) {
        var msg = jsonEncode({
          'message': jsonEncode(messageDetail),
          'sendToType': messageDetail.sendToType,
          'sendTo': messageDetail.sendTo,
          'action': 'message',
        });
        print('add $msg');
        channel.sink.add(msg);
        element.messageList.add(messageDetail);
        notifyListeners();
      }
    }
    return isAdd;
  }

  joinGroup(String groupId) {
    var msg = jsonEncode({
      'room': groupId,
      'action': 'join',
    });
    channel.sink.add(msg);
  }

  createGroup(String groupId) {
    var msg = jsonEncode({
      'room': groupId,
      'rooms': [groupId],
      'action': 'join',
    });
    channel.sink.add(msg);
  }

  void reClient() {
    webSocketManager.close();
    groupMessage = [];
    init();
    notifyListeners();
  }

  // 滚动到最后一行
  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  MessageEntity addMessageItem(String sessionId, String sessionType) {
    MessageEntity messageEntity = MessageEntity(sessionId, sessionType);
    groupMessage.add(messageEntity);
    if (sessionType == 'room') {
      createGroup(sessionId);
    }
    notifyListeners();
    return messageEntity;
  }
}
