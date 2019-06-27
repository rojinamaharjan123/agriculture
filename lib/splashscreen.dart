import 'dart:async';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login/loginui.dart';

void main() => runApp(new MaterialApp(
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  String userAccessToken, userDisplayName, userProfilePictureURL, userEmail;

  Future checkFirstSeen() async {

    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => new loginform()));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(85.0, 150.0, 0.0, 0.0),
            child: Image.asset(
              "images/Anna.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
