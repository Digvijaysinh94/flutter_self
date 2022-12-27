import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            pop(
                color: Colors.red,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note1.mp3'));
                }),
            pop(
                color: Colors.yellow,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note2.mp3'));
                }),
            pop(
                color: Colors.pink,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note3.mp3'));
                }),
            pop(
                color: Colors.green,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note4.mp3'));
                }),
            pop(
                color: Colors.blue,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note5.mp3'));
                }),
            pop(
                color: Colors.black,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note6.mp3'));
                }),
            pop(
                color: Colors.deepPurple,
                onp: () async {
                  await player.play(DeviceFileSource('sounds/note7.wav'));
                }),
          ],
        ),
      ),
    );
  }
}

Widget pop({color, onp}) {
  return Expanded(
    child: InkWell(
      onTap: onp,
      child: Container(
        color: color,
      ),
    ),
  );
}
