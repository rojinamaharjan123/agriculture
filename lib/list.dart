import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class MainList extends StatefulWidget {
  MainList({Key key}) : super(key: key);

  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  var data = [
    {
      "title": "Hey",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/200?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/100?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/150?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/125?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/175?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/225?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/250?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/350?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/275?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/300?random"
    },
    {
      "title": "Hey ",
      "price": "This is just a text description of the item",
      "image": "https://picsum.photos/325?random"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            scrollDirection: Axis.vertical,
            primary: true,
            itemCount: data.length,
            itemBuilder: (BuildContext content, int index) {
              return AwesomeListItem(
                  title: data[index]["title"],
                  price: data[index]["price"],
                  image: data[index]["image"]);
            },
          )
        ],
      ),
    );
  }
}

class AwesomeListItem extends StatefulWidget {
  String title;
  String price;
  Color color;
  String image;

  AwesomeListItem({this.title, this.price, this.color, this.image});

  @override
  _AwesomeListItemState createState() => new _AwesomeListItemState();
}

class _AwesomeListItemState extends State<AwesomeListItem> {
  static AudioCache player = AudioCache();
  final alarmAudioPath = "wickedgame.mp3";

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Container(width: 10.0, height: 190.0, color: widget.color),
        new Expanded(
          child: new Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: new Text(
                    widget.price,
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                new IconButton(
                  icon: new Icon(Icons.speaker),
                  onPressed: () {
                    player.play("sound_alarm.mp3");
                  },
                )
              ],
            ),
          ),
        ),
        new Container(
          height: 150.0,
          width: 150.0,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              new Transform.translate(
                offset: new Offset(50.0, 0.0),
                child: new Container(
                  height: 100.0,
                  width: 100.0,
                  color: widget.color,
                ),
              ),
              new Transform.translate(
                offset: Offset(10.0, 20.0),
                child: new Card(
                  elevation: 20.0,
                  child: new Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 10.0,
                            color: Colors.white,
                            style: BorderStyle.solid),
                        image: DecorationImage(
                          image: NetworkImage(widget.image),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
