import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playVoice(int voiceNum) {
    final AudioCache player = AudioCache();
    player.play('note$voiceNum.wav');
  }

  Expanded buildKey({int voiceNum, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playVoice(voiceNum);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              buildKey(voiceNum: 1, color: Colors.red),
              buildKey(voiceNum: 2, color: Colors.blue),
              buildKey(voiceNum: 3, color: Colors.teal),
              buildKey(voiceNum: 4, color: Colors.blueGrey),
              buildKey(voiceNum: 5, color: Colors.amberAccent),
              buildKey(voiceNum: 6, color: Colors.greenAccent),
              buildKey(voiceNum: 7, color: Colors.deepPurpleAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
