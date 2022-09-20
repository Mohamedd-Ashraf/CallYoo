import 'package:chat/colors.dart';
import 'package:chat/features/landing/screens/landing_screen.dart';
import 'package:chat/firebase_options.dart';
import 'package:chat/resposive/responsive_layout.dart';
import 'package:chat/routes.dart';
import 'package:chat/screens/mobile_screen_layout.dart';
import 'package:chat/screens/web_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/auth/screens/login.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:backgroundColor , appBarTheme: AppBarTheme(color: appBarColor)),
      //  const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout())
      onGenerateRoute: (settings) => generateRoute(settings),
      home:  const LandingScreen()
    );
  }
}