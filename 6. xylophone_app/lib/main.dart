import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int num) {
    player.play("note$num.wav");
  }

  Expanded buildKey({Color color, int numberOfSong}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numberOfSong);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, numberOfSong: 1),
              buildKey(color: Colors.orange, numberOfSong: 2),
              buildKey(color: Colors.yellow, numberOfSong: 3),
              buildKey(color: Colors.green, numberOfSong: 4),
              buildKey(color: Colors.teal, numberOfSong: 5),
              buildKey(color: Colors.blue, numberOfSong: 6),
              buildKey(color: Colors.purple, numberOfSong: 7),
            ],
          ),
        ),
      ),
    );
  }
}
