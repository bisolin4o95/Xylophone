import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded soundButton({color, soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        height: 50,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Container(
            color: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(children: [
              soundButton(color: Colors.red, soundNumber: 1),
              soundButton(color: Colors.yellow, soundNumber: 2),
              soundButton(color: Colors.orange, soundNumber: 3),
              soundButton(color: Colors.blue, soundNumber: 4),
              soundButton(color: Colors.lightGreen, soundNumber: 5),
              soundButton(color: Colors.green, soundNumber: 6),
              soundButton(color: Colors.purple, soundNumber: 7),
            ]),
          )),
    );
  }
}
