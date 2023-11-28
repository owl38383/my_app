import 'dart:convert';
import 'package:web_socket_channel/io.dart';

class WebSocketManager {
  static final WebSocketManager _instance = WebSocketManager._internal();

  factory WebSocketManager() {
    return _instance;
  }

  WebSocketManager._internal();

  // 单例 WebSocket 实例
  late IOWebSocketChannel _channel;

  // 连接 WebSocket
  void connectWebSocket(String url) {
    _channel = IOWebSocketChannel.connect(url);
  }

  // 获取 WebSocket 实例
  IOWebSocketChannel get channel => _channel;

  // 发送消息
  void sendMessage(String message) {
    _channel.sink.add(jsonEncode({'message': message}));
  }

  // 关闭连接
  void close() {
    _channel.sink.close();
  }
}
