import 'package:flutter/material.dart';
import 'package:likeminded/pages/home/homePage.dart';

class Routes {
  /// Defining the routes
  static String initial = home;
  static const String home = '/home';


/// Setting the routes screens
  static Map<String, Widget Function(BuildContext)> routes() => {
        home: (ctx) => HomePage()
  };
}