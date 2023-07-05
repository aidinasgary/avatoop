import 'package:flutter/material.dart';

class HotNewsPage extends StatelessWidget {
  const HotNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 100,
                      child: Image(
                          image: NetworkImage(
                              "https://storage.footballi.app/800/news/images/2023/04/09/16810732796803.jpeg")),
                    ),
                    Text("data"),
                    Icon(Icons.more)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
