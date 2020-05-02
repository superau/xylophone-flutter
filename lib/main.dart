import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playVoice(int voiceNum) {
    final AudioCache player = AudioCache();
    player.play('note$voiceNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    playVoice(1);
                  },
                  color: Colors.red,
                  child: null,
                ),
                FlatButton(
                  onPressed: () {
                    playVoice(2);
                  },
                  color: Colors.blue,
                  child: null,
                ),
                FlatButton(
                    onPressed: () {
                      playVoice(3);
                    },
                    color: Colors.teal,
                    child: null),
                FlatButton(
                    onPressed: () {
                      playVoice(4);
                    },
                    color: Colors.blueGrey,
                    child: null),
                FlatButton(
                    onPressed: () {
                      playVoice(5);
                    },
                    color: Colors.amberAccent,
                    child: null),
                FlatButton(
                    onPressed: () {
                      playVoice(6);
                    },
                    color: Colors.greenAccent,
                    child: null),
                FlatButton(
                    onPressed: () {
                      playVoice(7);
                    },
                    color: Colors.deepPurpleAccent,
                    child: null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
