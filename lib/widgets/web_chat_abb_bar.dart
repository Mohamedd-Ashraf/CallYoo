import 'package:chat/colors.dart';
import 'package:chat/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.077,
      child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
     
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                info[4]['profilePic'].toString(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Text(
              info[4]['name'].toString(),
              style: const TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon:  Icon(Icons.search , color: Colors.grey.shade400,),
            ),
            IconButton(
              onPressed: () {},
              icon:  Icon(Icons.more_vert,color: Colors.grey.shade400,),
            ),
          ],
        ),
      ]),
    );
  }
}
