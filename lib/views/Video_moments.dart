import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MaterialApp(home: VideoList()));
}

class VideoList extends StatefulWidget {
  const VideoList({super.key});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<Map<String, String>> _characters = [
    {
      'name': 'Optimus vs Lockdown',
      'link': 'https://www.youtube.com/watch?v=klzbpX-WSLc',
      'image': 'images/Optimus.png'
    },
    {
      'name': 'Reclutando a los Dinobots',
      'link': 'https://www.youtube.com/watch?v=S4x4MYkYHYg',
      'image': 'images/Bee.png'
    },
    {
      'name': 'llamando a todos los autobots',
      'link': 'https://www.youtube.com/watch?v=9V90qmpsdHk',
      'image': 'images/Drift.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moments')),
      body: ListView.builder(
        itemCount: _characters.length,
        itemBuilder: (context, index) {
          final character = _characters[index];
          return Card(
            child: Column(
              children: [
                Text(character['name']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 200,
                  child: YoutubePlayerWidget(videoUrl: character['link']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class YoutubePlayerWidget extends StatefulWidget {
  final String videoUrl;

  const YoutubePlayerWidget({required this.videoUrl, Key? key}) : super(key: key);

  @override
  _YoutubePlayerWidgetState createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
      onReady: () {
        print('Player is ready.');
      },
      onEnded: (metaData) {
        print('Video has ended.');
      },
    );
  }
}
