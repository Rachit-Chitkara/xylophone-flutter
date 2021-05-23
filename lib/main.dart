import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }

  Expanded Buildkey({Color color, int soundno}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          Playsound(soundno);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone'),
          backgroundColor: Colors.black54,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Buildkey(color: Colors.red, soundno: 1),
              Buildkey(color: Colors.orange, soundno: 2),
              Buildkey(color: Colors.yellow, soundno: 3),
              Buildkey(color: Colors.greenAccent, soundno: 4),
              Buildkey(color: Colors.green, soundno: 5),
              Buildkey(color: Colors.lightBlue, soundno: 6),
              Buildkey(color: Colors.deepPurple, soundno: 7),
            ],
          ),
        ),
      ),
    );
  }
}
