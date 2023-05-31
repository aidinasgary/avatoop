import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SoundPlayer extends StatelessWidget {
  const SoundPlayer({super.key});

  @override
  Widget build(BuildContext context) {
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
