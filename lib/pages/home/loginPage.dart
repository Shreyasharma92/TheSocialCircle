import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState();

  get passwordVisible => false;

  @override
  Widget build(BuildContext context) {
    bool remVal = false;

    final logo = Image.asset(
      "assets/images/Onboarding.png",
      height: 100.0,
    );

    final login = Text("Log In",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));

    final email = TextFormField(
      obscureText: false,
      cursorColor: Colors.purple,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        hintText: "Email Address",
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(5.0)),
        // prefixIcon: const Icon(Icons.email, color: Colors.purple)
      ),
    );

    final password = TextFormField(
      obscureText: true,
      cursorColor: Colors.purple,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[200]),
              borderRadius: BorderRadius.circular(5.0)),
          suffixIcon: Icon(
            passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey[350],
          )),
    );

    final remPassword = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Checkbox(
                    value: remVal,
                    onChanged: (bool value) {
                      setState(() {
                        remVal = value;
                      });
                    }),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );

    final loginButton = MaterialButton(
      height: 30.0,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      color: Colors.purple,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
    );

    final noAccount = Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Don't have an account?",
              style: TextStyle(
                color: Colors.black,
              )),
          // FlatButton (
          //   textColor: Color(0xffffbd4a),
          InkWell(
            onTap: () {},
            child: Text(
              ' Sign Up',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          // onPressed: () {},
          // )
        ],
      ),
    );

    final orConnect =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
        width: 60.0,
        height: 1.0,
        color: Colors.grey[400],
      ),
      Text(
        "   Or sign in with   ",
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

    final google = Padding(
      padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: MaterialButton(
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
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                logo,
                SizedBox(
                  height: 20.0,
                ),
                login,
                SizedBox(
                  height: 15.0,
                ),
                email,
                SizedBox(
                  height: 10.0,
                ),
                password,
                // SizedBox(
                //   height: 2.0,),
                remPassword,
                SizedBox(
                  height: 10.0,
                ),
                loginButton,
                SizedBox(
                  height: 5.0,
                ),
                noAccount,
                SizedBox(
                  height: 55.0,
                ),
                orConnect,
                SizedBox(
                  height: 15.0,
                ),
                google,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
