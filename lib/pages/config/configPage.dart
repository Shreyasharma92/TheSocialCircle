import 'package:flutter/material.dart';
import 'package:likeminded/routes/routes.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Likeminded',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      routes: Routes.routes(),
    );
  }
}