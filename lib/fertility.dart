import 'package:flutter/material.dart';
class FertilityClass extends StatefulWidget {
  @override
  _FertilityClassState createState() => _FertilityClassState();
}

class _FertilityClassState extends State<FertilityClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("उब्जाउ जन्य अन्न"),
      ),
      body: Column(children: <Widget>[
        new Text("केरा"),
      new Text("सुन्तला"),
        new Text("आप")
      ],),
    );
  }
}
