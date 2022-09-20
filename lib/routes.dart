import 'package:chat/common/screens/error.dart';
import 'package:flutter/material.dart';

import 'features/auth/screens/login.dart';

Route <dynamic > generateRoute (RouteSettings routeSettings){
  switch (routeSettings.name) {
    case LoginScreen.routeName :
      return MaterialPageRoute(builder: ((context) => LoginScreen() ));
      
    default:
      return MaterialPageRoute(builder: ((context) => const ErrorScreen() ));

  }
}