import 'package:flutter/material.dart';
import 'package:youtube_video_player/potrait_player.dart';

class FalsePage extends StatelessWidget {
  const FalsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: PotraitPlayer(
                link: 'https://www.youtube.com/watch?v=-4FjHTnFAQQ',
                aspectRatio: 16 / 9),
          )),
    );
  }
}
