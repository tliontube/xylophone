import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$soundNumber.wav"),
    );
  }

  Expanded buildKey(
      {Color color, int soundNumber, Color textColor, String notes}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(notes, style: TextStyle(color: textColor)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  color: Colors.red,
                  soundNumber: 1,
                  textColor: Colors.white,
                  notes: 'C'),
              buildKey(
                  color: Colors.yellow,
                  soundNumber: 2,
                  textColor: Colors.black,
                  notes: 'D'),
              buildKey(
                  color: Colors.blue,
                  soundNumber: 3,
                  textColor: Colors.white,
                  notes: 'E'),
              buildKey(
                  color: Colors.green,
                  soundNumber: 4,
                  textColor: Colors.black,
                  notes: 'F'),
              buildKey(
                  color: Colors.white,
                  soundNumber: 5,
                  textColor: Colors.black,
                  notes: 'G'),
              buildKey(
                  color: Colors.teal,
                  soundNumber: 6,
                  textColor: Colors.black,
                  notes: 'A'),
              buildKey(
                  color: Colors.lightBlueAccent,
                  soundNumber: 7,
                  textColor: Colors.white,
                  notes: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
