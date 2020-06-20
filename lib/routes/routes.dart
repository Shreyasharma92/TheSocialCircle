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
  static Map<String, Widget Function(BuildContext)> routes() => {
        home: (ctx) => HomePage(),
        login: (ctx) => LoginPage(),
        signup: (ctx) => SignUpPage(),
      };
}
