import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //Method to get the audio files
  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color clr, int num}) {
    return Expanded(
      child: FlatButton(
        color: clr,
        onPressed: () {
          playSound(num);
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
            children: [
              buildKey(clr: Colors.red, num: 1),
              buildKey(clr: Colors.yellow, num: 2),
              buildKey(clr: Colors.blueGrey, num: 3),
              buildKey(clr: Colors.indigo, num: 4),
              buildKey(clr: Colors.brown, num: 5),
              buildKey(clr: Colors.teal, num: 6),
              buildKey(clr: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
