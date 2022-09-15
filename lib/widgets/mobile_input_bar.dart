import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors.dart';

class MobileInputBar extends StatelessWidget {
  const MobileInputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: const BoxDecoration(color: chatBarMessage),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left:7 , top: 7 , bottom: 7),
    
            height: MediaQuery.of(context).size.height * 0.07,
  
            child: TextFormField(
              enabled: true,
              style:
                  TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.9)),
              cursorColor: appBarColor,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions_outlined,
                        color: Colors.grey),
                  ),
                ),
                suffixIcon: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file_outlined,
                            color: Colors.grey),
                      ),
                        IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt,
                            color: Colors.grey),
                      ),
                    ],
                  
                ),
                filled: true,
                // border:
                //     OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.transparent) ),
                fillColor: searchBarColor,

              focusedBorder:   UnderlineInputBorder(  borderRadius:BorderRadius.circular(20) , borderSide: BorderSide(color: Colors.transparent),),
              enabledBorder:  UnderlineInputBorder(   borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color: Colors.transparent),),

                hintText: 'Type a message..',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 151, 141, 141),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5 , top: 3 , bottom: 3),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: tabColor,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_none,
                  color: Colors.white,
                )),
          ),
        )
      ]),
    );
  }
}
