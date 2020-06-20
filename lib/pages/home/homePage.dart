import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      "assets/images/Onboarding.png",
      height: 100.0,
      width: 250.0,
      fit: BoxFit.contain,
    );

    final login = MaterialButton(
      height: 30.0,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 12.0),
      color: Colors.purple,
      onPressed: () => Navigator.pushNamed(context, Routes.login),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
    );

    final signup = MaterialButton(
      height: 30.0,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
      color: Colors.grey[200],
      onPressed: () => Navigator.pushNamed(context, Routes.signup),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text("Sign up",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 15)),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                logo,
                SizedBox(
                  height: 300,
                ),
                login,
                SizedBox(
                  height: 15.0,
                ),
                signup,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
