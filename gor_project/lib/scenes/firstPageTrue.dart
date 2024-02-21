import 'package:flutter/material.dart';
import 'package:youtube_video_player/potrait_player.dart';

class TruePage extends StatefulWidget {
  const TruePage({super.key});

  @override
  State<TruePage> createState() => _TruePageState();
}

class _TruePageState extends State<TruePage> {
  String trueUrl = 'https://www.youtube.com/watch?v=Gzs9bdEP6R4';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("True(!)"),
        ),
        body: Center(
          child: PotraitPlayer(link: trueUrl, aspectRatio: 16 / 9),
        ),
      ),
    );
  }
}
