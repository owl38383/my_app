import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/message/view_model/message_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<MessageViewMode>(context, listen: false).init();
  }

  TextEditingController textEditingController = TextEditingController();

  String selectedValue = 'user';

  _submit() {
    if (textEditingController.text.isNotEmpty) {
      Provider.of<MessageViewMode>(context, listen: false).addMessageItem(textEditingController.text, selectedValue);
      textEditingController.clear();
      setState(() {});
      // 点击按钮后关闭弹窗
    }
  }

  addFriend() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('切换账号'),
          content: Container(
            height: 200, // 调整列表高度
            width: 300, // 调整列表宽度
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                ),
                RadioListTile<String>(
                  title: Text('用户'),
                  value: 'user',
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      (context as Element).markNeedsBuild();
                      selectedValue = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('群组'),
                  value: 'room',
                  groupValue: selectedValue,
                  onChanged: (value) {
                    (context as Element).markNeedsBuild();
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                _submit();
                Navigator.of(context).pop();
              },
              child: Text('确定'),
            ),
            TextButton(
              onPressed: () {
                textEditingController.clear();
                Navigator.of(context).pop();
              },
              child: Text('取消'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MessageViewMode messageViewMode = context.watch<MessageViewMode>();
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: addFriend, child: Text('添加会话')),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messageViewMode.groupMessage.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messageViewMode.groupMessage[index].sessionType +
                      '::' +
                      messageViewMode.groupMessage[index].sessionId),
                  subtitle: Text(messageViewMode.groupMessage[index].messageList.length > 0
                      ? messageViewMode.groupMessage[index]
                          .messageList[messageViewMode.groupMessage[index].messageList.length - 1].sendContent
                          .toString()
                      : '-'),
                  trailing: Text(messageViewMode.groupMessage[index].messageList.length > 0
                      ? messageViewMode.groupMessage[index]
                          .messageList[messageViewMode.groupMessage[index].messageList.length - 1].sendTime
                          .toString()
                      : '-'),
                  onTap: () {
                    context.router.push(
                      MessageSessionRoute(
                          sessionId: messageViewMode.groupMessage[index].sessionId,
                          sessionType: messageViewMode.groupMessage[index].sessionType),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Provider.of<MessageViewMode>(context, listen: false).reClient();
        },
        child: Text('重连'),
      ),
    );
  }
}
