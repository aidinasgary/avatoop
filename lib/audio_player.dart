import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              // final player = AudioCache();
              // player.load("Olsun_Hadise_320.mp3");
            },
            child: const Text("MyMusic"),
          )
        ],
      ),
    );
  }
}
