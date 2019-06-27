import 'package:flutter/material.dart';

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
          "Fertility feedback",
          style: new TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new TextField(
                  decoration:
                      new InputDecoration(hintText: " type the fertility rate(5.5-7.0)"),
                  onChanged: (double  ) {
                    setState(() {});
                  }),










            ],
          ),


        ),
      ),


    );






  }
}
