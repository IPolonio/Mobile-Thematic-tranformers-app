import 'package:flutter/material.dart';
import 'package:tareatematica/views/Acercade.dart';
import 'package:tareatematica/views/Characters.dart';
import 'package:tareatematica/views/Contratame.dart';
import 'package:tareatematica/views/Exp.dart';
import 'package:tareatematica/views/Video_moments.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Characters ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavTabBar(),
    );
  }
}

class NavTabBar extends StatelessWidget {
  const NavTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 34.0),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/Logo.png'),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.video_file)),
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.people)),
              Tab(icon: Icon(Icons.videocam_sharp)),
             
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NameList(),
            VideoList(),
            Acercade(),
            Contratame(), 
            Videoexp(), 
          ],
        ),
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  const PlaceholderWidget({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          'Placeholder Widget',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
