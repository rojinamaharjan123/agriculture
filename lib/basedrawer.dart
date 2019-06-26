import 'package:agriculture/farmers/farmers.dart';
import 'package:agriculture/vendor/vendors.dart';
import 'package:flutter/material.dart';

import 'fertilityfeedback.dart';

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
            accountName: new Text("किसान"),
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
              "बुक विकेता",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.library_add,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => new VendorList())),
          ),
          ListTile(
            title: new Text(
              "खरिद गर्नुहोस /-",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.book,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => new FarmerList())),
          ),
          ListTile(
              title: new Text(
                "यातायात सुभिदा",
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: new Icon(
                Icons.drive_eta,
                color: Color.fromRGBO(42, 85, 150, 1.0),
              ),
              onTap: () {}),
          ListTile(
              title: new Text(
                "Add Vechicles",
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: new Icon(
                Icons.add,
                color: Color.fromRGBO(42, 85, 150, 1.0),
              ),
              onTap: () {}),
          ListTile(
              title: new Text(
                "Products",
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: new Icon(
                Icons.shopping_basket,
                color: Color.fromRGBO(42, 85, 150, 1.0),
              ),
              onTap: () {}),
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
          ListTile(
            title: new Text(
              "Information section",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.search,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
          ),
          ListTile(
            title: new Text(
              "fertility feedback",
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: new Icon(
              Icons.search,
              color: Color.fromRGBO(42, 85, 150, 1.0),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => new FeedBackDetail())),
          ),
        ],
      ),
    );
  }
}
