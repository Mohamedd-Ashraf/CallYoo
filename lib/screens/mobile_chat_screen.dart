
import 'package:chat/colors.dart';
import 'package:chat/info.dart';
import 'package:chat/widgets/chat_input_app_bat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/chat_list.dart';
import '../widgets/mobile_input_bar.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[7]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children:const  [
          Expanded(
            child: ChatList(),
          ),
          MobileInputBar()
          // ChatInputAppBar()
        ],
      ),
    );
  }
  

}


