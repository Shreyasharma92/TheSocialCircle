import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = TextStyle();
  @override
  Widget build(BuildContext context) {


    final startingText= Column(
            children: <Widget>[Text(
                    "You tend to find talking",
                                        style: TextStyle(
                        
                        color: Colors.grey[600],
                        fontWeight: FontWeight.normal,
                        
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "to new people",
                    maxLines: 3,
                    
                   // minLines:
                    style: TextStyle(
                        
                        color: Colors.grey[600],
                        fontWeight: FontWeight.normal,
                        
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
            ]
    );

    final text1 = MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Colors.grey[300], width: 2.0),
        ),
        child: Text("awkward",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Color(0xff757575), fontWeight: FontWeight.bold)),
      );

    final text2 = MaterialButton(
        color: Colors.purple,
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0)
        ),
        child: Text("energizing",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Color(0xfffafafa),
              // fontWeight: FontWeight.bold)
               ),
      ),
    );

    final next = InkWell(
                  onTap: (){},
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                  color: Color(0xFF9C27B0),
                  ),),
                );

    return Scaffold(
      appBar: new AppBar(
          elevation: 0.0,
          title: new Text(" Personality Factor",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              )),
          backgroundColor: Color(0xFFFAFAFA)),
      body: Center(
        child: Center(
          child: Padding(
            padding:  const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  SizedBox(
                    height: 25
                  ),
                 startingText,
                SizedBox(
                  height: 50.0,
                ),
                text1,
                SizedBox(
                  height: 10.0,
                ),
                text2,
                SizedBox(
                  height: 30.0,
                ),
                next,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
