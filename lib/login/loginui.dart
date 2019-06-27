import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

import '../homepage.dart';

void main() {
  runApp(new MaterialApp(
    home: loginform(),
  ));
}

class loginform extends StatefulWidget {
  @override
  _loginformState createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: new AppBar(
        title: Text("लग - इन"),
        flexibleSpace: Container(),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: renameController,
                decoration: InputDecoration(
                  hintText: " मोवाइल नम्बर",
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter number';
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: localityController,
                decoration: InputDecoration(
                  hintText: "Passwords",
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Password';
                  }
                },
              ),
            ),
           Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 75.0,
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Color.fromRGBO(42, 85, 150, 1.0),
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    CircularProgressIndicator();
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) => new HomePage()));
                    print(name);
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String name;
String locality;
String city;
String phone1;
String phone2;
String phone3;

//String imageUrl = UserConstants.userProfileUrl;

final renameController = TextEditingController();
final localityController = TextEditingController();
final cityController = TextEditingController();
final phoneNumberOneController = TextEditingController();
final phonenumbertwoController = TextEditingController();
final phonenumberthreeController = TextEditingController();




void showProgressBar(BuildContext context) {
  AlertDialog dialog = new AlertDialog(
    content: new Container(
        width: 50.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: Column(
          children: <Widget>[
            Text("Adding User Data..."),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(),
          ],
        )),
  );
  Timer(Duration(seconds: 3), () {
    _showToast(context);
  });
  showDialog(context: context, child: dialog);
}

void _showToast(BuildContext context) {
  AlertDialog dialog = new AlertDialog(
    content: new Container(
        width: 50.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: new Column(
          children: <Widget>[
            Text("Users data edited Sucessfully"),
          ],
        )),
  );
  showDialog(context: context, child: dialog);
  Timer(Duration(seconds: 1), () {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => new HomePage()));
  });
}
