import 'package:agriculture/farmers/farmers.dart';
import 'package:flutter/material.dart';

class BaseDrawer extends StatefulWidget {
  @override
  _BaseDrawerState createState() => _BaseDrawerState();
}

class _BaseDrawerState extends State<BaseDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Kisan"),
            accountEmail: new Text("acha.com"),
            currentAccountPicture: new InkWell(
              child: new Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(""),
                    )),
              ),
         
            ),
          ),
         
          ListTile(
            title: new Text(
              "Book vendor",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.library_add,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
         
          ),
          ListTile(
            title: new Text(
              "Buy Vegetables",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.book,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap:  ()=> Navigator.push(context,
                MaterialPageRoute(builder: (context) => new FarmerList())),
          ),
          ListTile(
            title: new Text(
              "My Vechicles",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.drive_eta,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: () {}
          ),
          ListTile(
            title: new Text(
              "Add Vechicles",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.add,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: (){}
          ),
          ListTile(
            title: new Text(
              "Products",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.shopping_basket,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: (){}
          ),
          ListTile(
            title: new Text(
              "Settings",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.settings,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
          ),
          ListTile(
            title: new Text(
              "Service History",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.history,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
          ),
       
        ],
      ),
    );
  }
}