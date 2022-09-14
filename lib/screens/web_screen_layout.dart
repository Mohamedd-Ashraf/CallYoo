import 'package:chat/widgets/chat_list.dart';
import 'package:chat/widgets/contacts_list.dart';
import 'package:chat/widgets/web_profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/web_chat_abb_bar.dart';
import '../widgets/web_serach_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children:const [
                ProfileAppBar(),
                WebSearchBar(),
                 ContactsList(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/backgroundImage.png"),
            ),
          ),
          child: Column(children: const [
             WebChatAppBar(),
             Expanded(child: ChatList())
          ]),
        )
      ],
    ));
  }
}



