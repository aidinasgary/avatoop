import 'package:flutter/material.dart';
import 'package:untitled16/home_page.dart';
import 'package:untitled16/model/data/avatoop_fack_data.dart';
import 'package:readmore/readmore.dart';

class HotNewsPage extends StatelessWidget {
  const HotNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person_rounded),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.home_rounded)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        )
      ], leading: const Center(child: Text('Avatoop'))),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: hotNews.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                hotNews[index].title,
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              ReadMoreText(
                                trimMode: TrimMode.Line,
                                trimLines: 3,
                                hotNews[index].subtitle.toString(),
                                //  trimCollapsedText: "show more",
                                //trimExpandedText: "show less",
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.share, size: 20),
                                  SizedBox(width: 100),
                                  Icon(Icons.remove_red_eye_rounded, size: 20),
                                  Icon(Icons.comment_bank_outlined, size: 20),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              image: DecorationImage(
                                  image: NetworkImage(hotNews[index].images)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
