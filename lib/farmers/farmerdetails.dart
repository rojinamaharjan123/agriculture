import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  _launchcaller() async {
    const url = "tel:1234567";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "किसान",
          style: new TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
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
              "नाम: हरि पर्साद",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "ठेगाना: जुम्ला",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Text(
                "मोबाइल नम्मर:१५६७३८९९९० ",
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
              onPressed: _launchcaller,
              child: new Text("Contacts"),
            ),
          )
        ],
      ),
    );
  }
}
