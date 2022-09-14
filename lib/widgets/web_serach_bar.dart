import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: const BoxDecoration(
        // color: searchBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child:  TextField(
        
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          hintText: 'Search or start New chat',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search),
          ),
        ),
        
      ),
    );
  }
}
