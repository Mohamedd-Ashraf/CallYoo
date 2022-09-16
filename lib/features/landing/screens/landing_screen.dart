import 'package:chat/colors.dart';
import 'package:chat/common/widgets/myButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 25,
            ),
            const Text(
              "Welcome To Zreebah Chat",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height / 13,
            ),
            Image.asset(
              'assets/bg.png',
              color: tabColor,
            ),
            SizedBox(
              height: size.height / 13,
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Text(
                "Read our Privacy . 'Tap Agree and Continue' To Accept the Terms of Service",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
             SizedBox(
                height: size.height / 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: MyButton(
                text: "Agree and continue",
                onPressedFunction: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
