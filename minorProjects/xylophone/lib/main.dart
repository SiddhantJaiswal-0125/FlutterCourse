import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  static AudioCache pl = AudioCache();
  void playSound(int n) {
    final pl = AudioCache();
    pl.play('note$n.wav');
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
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.deepOrange,
                onPressed: () {
                  playSound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.lightGreen,
                onPressed: () {
                  playSound(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playSound(7);
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
