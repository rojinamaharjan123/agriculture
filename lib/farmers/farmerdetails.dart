import 'package:flutter/material.dart';

class FarmersDetails extends StatefulWidget {
  FarmersDetails({Key key}) : super(key: key);

  _FarmersDetailsState createState() => _FarmersDetailsState();
}

class _FarmersDetailsState extends State<FarmersDetails> {
   Widget _buildBackground() {
    return new Image.asset(
      'asset/brad1.jpg',
      fit: BoxFit.cover,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Kisan ko jankari"),
      ),
      body: ListView(
        children: <Widget>[
          _buildBackground(),
       
        ],
        
      ),
    );
  }
}
