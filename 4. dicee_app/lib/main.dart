import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePage createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void random() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: random,
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: random,
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              onPressed: random,
              child: Text(
                "Roll Up",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
