import 'package:flutter/material.dart';

class SoundPlayer extends StatelessWidget {
  const SoundPlayer({super.key});
  static const String tag = '/SoundPlayerRoute';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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
    );
  }
}
