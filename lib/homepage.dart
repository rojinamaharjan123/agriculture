import 'package:agriculture/list.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static  AudioCache player = AudioCache();
final alarmAudioPath = "wickedgame.mp3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: new Text(
      "आजा को मुलय",
      style: TextStyle(fontFamily: 'NotoSans'),
    )),
    body: MainList(),
    );
  }
  
}

  