import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videoexp extends StatefulWidget {
  const Videoexp({super.key});

  @override
  State<Videoexp> createState() => VideoexpState();
}

class VideoexpState extends State<Videoexp> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets/videos/exp.mp4'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(
            flickManager: flickManager,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}
