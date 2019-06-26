import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FarmersDetails(),
    );
  }
}

class FarmersDetails extends StatefulWidget {
  @override
  _FarmersDetailsState createState() => _FarmersDetailsState();
}

class _FarmersDetailsState extends State<FarmersDetails> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/farmer.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Name:",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Location:",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all( 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Text(
                "Phone number: ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
           Padding(
               padding: EdgeInsets.all(10),
             child: new RaisedButton(
               textColor: Colors.blue,
               elevation: 1,
               onPressed:
             (){},
                 child: new Text("Contacts"),









             ),
           )

        ],
      ),
    );
  }
}
