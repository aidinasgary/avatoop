/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:untitled16/models/audio_player_api.dart';*/
/*
class SoundPlayer extends StatelessWidget {
  late SingleAudioControllr singleAudioControllr;
  late AudioPlayerModel audioPlayerModel;

  SoundPlayer() {
    // audioPlayerModel = Get,argument
    singleAudioControllr =
        Get.put(SingleAudioControllr(id: audioPlayerModel.id));
  }
  @override
  Widget build(BuildContext context) {
    print(audioPlayerModel);
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                LinearPercentIndicator(
                                  percent: 1.0,
                                  backgroundColor: Colors.teal,
                                  progressColor: Colors.amber,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.skip_previous_rounded,
                                        color: Colors.white),
                                    Icon(
                                      Icons.play_circle_fill_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Icon(Icons.skip_next_rounded,
                                        color: Colors.white),
                                    SizedBox(),
                                    Icon(Icons.loop_rounded,
                                        color: Colors.white),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cluse')),
                      ],
                    ),
                  );
                });
          },
          child: const Text("show")),
    ));
  }
}
*/