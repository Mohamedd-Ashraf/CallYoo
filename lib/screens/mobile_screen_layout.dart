import 'package:chat/colors.dart';
import 'package:chat/widgets/contacts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Zreebah Chat"),
          backgroundColor: appBarColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.grey),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.grey)
          ],
          bottom: TabBar(
            // isScrollable: false,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              //  Container( width: 20, child:  Center(child: const Tab(icon: Icon(Icons.camera),) )),
              const Tab(
                text: "Chats",
              ),
              const Tab(
                text: "Status",
              ),
              const Tab(
                text: "Calls",
              ),
            ],
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorColor: tabColor,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey.withOpacity(0.7),

            labelColor: tabColor,
          ),
        ),
        body: ContactsList(),
      ),
    );
  }
}
