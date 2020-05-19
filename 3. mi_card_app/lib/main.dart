import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
                radius: 80.0,
              ),
              Text(
                "Mirodil Fayzullayev",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 38.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "FULLSTACK DEVELOPER",
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 20.0,
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+998 90 971 10 01",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansPro",
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "MirodilFayzullayev@gmail.com",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "SourceSansPro",
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
