import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors.dart';

class ChatInputAppBar extends StatelessWidget {
  const ChatInputAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: const BoxDecoration(color: chatBarMessage),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.attach_file_outlined, color: Colors.grey),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(7),
            // width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.07,
     
            child:  TextField(
              style: TextStyle(fontSize: 14 , color: Colors.white.withOpacity(0.9)),
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                fillColor: searchBarColor,
                floatingLabelStyle: null,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding:  EdgeInsets.only(bottom: 12, left: 6),
                hintText: 'Type a message..',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {},
              icon:  const Icon(
                Icons.mic_none,
                color: Colors.grey,
              )),
        )
      ]),
    );
  }
}
