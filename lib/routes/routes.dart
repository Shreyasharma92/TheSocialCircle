import 'package:flutter/material.dart';
import 'package:likeminded/pages/home/homePage.dart';
import 'package:likeminded/pages/home/loginPage.dart';
import 'package:likeminded/pages/home/signuppage.dart';

class Routes {
  /// Defining the routes
  static String initial = home;
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';

  /// Setting the routes screens
<<<<<<< HEAD
  static Map<String, Widget Function(BuildContext)> routes() => {
        home: (ctx) => HomePage(),
        login: (ctx) => LoginPage(),
        signup: (ctx) => SignUpPage(),
      };
}
=======
  static Map<String, Widget Function(BuildContext)> routes() =>
      {home: (ctx) => HomePage()};
}



>>>>>>> a3f8243f96bee40708e8b9f2a607745fdf1cecea
