import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/utils/screen.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/global.dart';
import 'package:my_app/pages/message/view_model/message_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MessageSessionPage extends StatefulWidget {
  final String sessionId;
  final String sessionType;

  const MessageSessionPage({super.key, required this.sessionId, required this.sessionType});

  @override
  State<MessageSessionPage> createState() => _MessageSessionPageState();
}

class _MessageSessionPageState extends State<MessageSessionPage> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.sessionId}::::::${widget.sessionType}"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<MessageViewMode>(
              builder: (context, myProvider, child) {
                MessageEntity messageEntity = myProvider.getMessageBySessionId(widget.sessionId);
                myProvider.scrollToBottom();
                return ListView.builder(
                  controller: myProvider.scrollController,
                  itemCount: messageEntity.messageList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: duSetHeight(10)),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: messageEntity.messageList[index].sendId != Global.profile.userId
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('发送人：' + messageEntity.messageList[index].sendId),
                                Text('内容：' + messageEntity.messageList[index].sendContent),
                                Text('时间:${messageEntity.messageList[index].sendTime}'),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('${messageEntity.messageList[index].sendId}：发送人'),
                                Text('${messageEntity.messageList[index].sendContent}：内容'),
                                Text('${messageEntity.messageList[index].sendTime}:时间'),
                              ],
                            ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: inputTextEdit(
                    controller: controller,
                    hintText: '输入要发送的内容',
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<MessageViewMode>().addMessage(
                        widget.sessionId,
                        MessageDetail(
                            Global.profile.userId,
                            widget.sessionId,
                            widget.sessionType,
                            DateTime.now().millisecondsSinceEpoch,
                            controller.text,
                            controller.text.runtimeType.toString()));

                    controller.clear();
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
