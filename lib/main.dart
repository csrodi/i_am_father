import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioCache audioCache = AudioCache();

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(color: Colors.black),
      ),
      title: 'I Am Your Father App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Your Father'),
        ),
        body: Ink.image(
          image: AssetImage('assets/images/vader.png'),
          child: InkWell(
            onTap: () {
              playSound(audioCache);
            },
          ),
        ),
      ),
    );
  }

  playSound(AudioCache audioCache) async {
    audioCache.play('sounds/father.mp3', mode: PlayerMode.LOW_LATENCY);
  }
}
