import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playButton(int buttonNum) {
    print('button number= ' + buttonNum.toString());
    final audioPlayer = AudioCache();
    audioPlayer.play('note$buttonNum.wav');
  }

  Expanded createCommonView(int buttonNum, Color givenColor){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playButton(buttonNum);
        },
        color: givenColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createCommonView(1, Colors.red),
              createCommonView(2, Colors.orange),
              createCommonView(3, Colors.yellow),
              createCommonView(4, Colors.green),
              createCommonView(5, Colors.teal),
              createCommonView(6, Colors.blue),
              createCommonView(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
