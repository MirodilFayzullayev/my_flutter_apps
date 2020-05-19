import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("I am Poor App"),
          ),
          body: Center(
            child: Image(
              image: AssetImage("images/smiles-are-everywhere.jpg"),
            ),
          ),
        ),
      ),
    );
