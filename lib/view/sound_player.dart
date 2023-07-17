/*mport 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../controller/audio_player_api.dart';

class SoundPlayer extends StatelessWidget {
  late SingleAudioControllr singleAudioControllr;
  late AudioPlayerModel audioPlayerModel;
/*
  SoundPlayer() {
    //Get.argument =
    singleAudioControllr =
        Get.put(SingleAudioControllr(id: audioPlayerModel.id));
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: Icon(Icons.abc),
                    title: Text("data"),
                    trailing: Icon(Icons.play_arrow_rounded),
                  ),
                ),
              );
            }),
      ),
    );
=======
        body: Center(
      child: 
    ));
>>>>>>> 5b8bd83bcad9bb1d67939f33dd4ff758c11c740e
  }
}
*/