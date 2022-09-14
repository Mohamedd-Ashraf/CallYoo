import 'package:chat/info.dart';
import 'package:chat/widgets/my_messages.dart';
import 'package:chat/widgets/sender_messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessages(message:messages[index]['text'].toString(), time: messages[index]['time'].toString());
          } else {
            return SenderMessages(message:messages[index]['text'].toString(), time: messages[index]['time'].toString());

          }
        });
  }
}
