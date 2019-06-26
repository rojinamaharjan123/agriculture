import 'package:agriculture/farmers/farmerdetails.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import "package:http/http.dart" as http;
import 'dart:convert';

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
      home: FarmerList(title: 'Simple Json and FutureBuilder'),
    );
  }
}

class FarmerList extends StatefulWidget {
  FarmerList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FarmerList> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  List words = <User>[];
  @override
  void initState() {
    getUsers();
    super.initState(); //initializing list
  }

  Future<List<User>> getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2");

    var jsonData = json.decode(data.body);

    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["about"], u["name"], u["email"], u["picture"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  Future<List<User>> clearUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2");

    var jsonData = json.decode(data.body);

    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u[""], u[""], u[""], u[""]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farmers List"),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        key: _refreshIndicatorKey,
        child: Container(
          child: FutureBuilder(
            future: getUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(child: Text("Loading.......")),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data[index].picture),
                      ),
                      title: Text(snapshot.data[index].email),
                      subtitle: Text(snapshot.data[index].name),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new FarmersDetails())),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Future<Null> _refresh() async {
    //Holding pull to refresh loader widget for 2 sec.
    //You can fetch data from server.
    await new Future.delayed(const Duration(seconds: 2));

    setState(() => getUsers());
    return null;
  }
}

class User {
  final String about;
  final String name;
  final String email;
  final String picture;

  User(this.about, this.email, this.name, this.picture);
}

class Words {
  final String about;
  final String name;
  final String email;
  final String picture;

  Words(this.about, this.email, this.name, this.picture);
}

abstract class Repository {
  Future<User> getUsers(int index);
}

abstract class Cache<T> {
  Future<T> get(int index);

  put(int index, T object);
}
