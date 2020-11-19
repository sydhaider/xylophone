import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                note(num: 1, color: Colors.red),
                note(num: 2, color: Colors.orange),
                note(num: 3, color: Colors.yellow),
                note(num: 4, color: Colors.green),
                note(num: 5, color: Colors.green[100]),
                note(num: 6, color: Colors.blue),
                note(num: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded note({int num, Color color}) {
    return Expanded(
      child: FlatButton(
          minWidth: double.infinity,
          color: color,
          onPressed: (){
              final player = AudioCache();
              player.play('note$num.wav');
              player.clear('note$num.wav');
            }
          ,
          child: Text('')),
    );
  }
}
