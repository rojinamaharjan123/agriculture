import 'package:flutter/material.dart';

import 'fertility.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeedBackDetail(),
    );
  }
}

class FeedBackDetail extends StatefulWidget {
  FeedBackDetail({Key key, this.title}) : super(key: key);
  final String title;

  _MyHomePageState createState() => _MyHomePageState();
}

@override
@override
class _MyHomePageState extends State<FeedBackDetail> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "प्रजनन प्रतिक्रिया",
          style: new TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new TextField(
                decoration: new InputDecoration(
                    hintText: " प्रजनन प्रतिक्रिया पेस गर्नुहोस(५.५-७.०)"),
                onChanged: (double) {
                  setState(() {});
                }),
            new IconButton(icon:  new Icon(Icons.search ),onPressed: (


                ){
              Navigator.of(context).pushReplacement(
                  new MaterialPageRoute(builder: (context) => new FertilityClass()));
            })

          ],
        ),
      ),

    );
  }


}


