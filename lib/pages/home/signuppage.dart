import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      "assets/images/Onboarding.png",
      height: 80.0,
    );

    final signUp = Text("Sign up",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ));

    final name = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Name",
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(5.0)),
        // prefixIcon: const Icon(Icons.person, color: Colors.purple)
      ),
    );

    final email = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email Address",
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(5.0)),
        // prefixIcon: const Icon(Icons.email, color: Colors.purple)
      ),
    );

    final password = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(5.0)),
      ),
    );

    final passwordConfirm = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Confirm Password",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );

    final signupButton = MaterialButton(
      elevation: 5.0,
      height: 1.0,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      onPressed: () {},
      color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text("Sign up",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );

    final orConnect =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
        width: 60.0,
        height: 1.0,
        color: Colors.grey[400],
      ),
      Text(
        "   Or sign up with   ",
        style: TextStyle(
          color: Colors.grey[400],
        ),
      ),
      Container(
        width: 60.0,
        height: 1.0,
        color: Colors.grey[400],
      ),
    ]);

    final google = MaterialButton(
      height: 30.0,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      color: Colors.lightBlue[900],
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text("Google",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );

    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    logo,
                    SizedBox(
                      height: 60,
                    ),
                    signUp,
                    SizedBox(
                      height: 13,
                    ),
                    name,
                    SizedBox(
                      height: 13,
                    ),
                    email,
                    SizedBox(
                      height: 13,
                    ),
                    password,
                    SizedBox(
                      height: 13,
                    ),
                    passwordConfirm,
                    SizedBox(
                      height: 17,
                    ),
                    signupButton,
                    SizedBox(
                      height: 35,
                    ),
                    orConnect,
                    SizedBox(
                      height: 15,
                    ),
                    google,
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
