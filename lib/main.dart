import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // * Create player instance
  final player = AudioCache();

  void playSound(int id) => player.play('note$id.wav');

  Expanded addButton({Color color, int id}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(id);
        },
        color: color,
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
              addButton(color: Colors.red, id: 1),
              addButton(color: Colors.orange, id: 2),
              addButton(color: Colors.yellow, id: 3),
              addButton(color: Colors.green, id: 4),
              addButton(color: Colors.teal, id: 5),
              addButton(color: Colors.blue, id: 6),
              addButton(color: Colors.purple, id: 7),
            ],
          ),
        ),
      ),
    );
  }
}
