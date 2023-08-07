import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:untitled16/view/TableScreen.dart';
import 'package:untitled16/view/hot_news_page.dart';
import 'package:untitled16/view/league_page.dart';
import 'package:untitled16/widgets/custom_slider.dart';

import 'view/Other/stable_classes.dart';
import 'view/new_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'آواتوپ',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
              Column(
                children: [
                  const CustomSlider(),
                  // amiri make changes here
                  //ListView---------------------------

                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ListView.custom(
                      scrollDirection: Axis.horizontal,
                      childrenDelegate: SliverChildListDelegate([
                        GestureDetector(
                            onTap: () => Get.to(HotNewsPage()),
                            child: _pages(0)),
                        GestureDetector(onTap: () => {}, child: _pages(1)),
                        GestureDetector(onTap: () {}, child: _pages(2)),
                        GestureDetector(
                            onTap: () => Get.to(LeaguePage()),
                            child: _pages(3)),
                      ]),
                    ),
                  ),
                  //----------------------------------------------

                  // hot news text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          color: Colors.blue,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(HotNewsPage());
                          },
                          child: const Text(
                            'بیشتر',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "اخبار داغ !",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            // fontFamily: 'dubai',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /////////////////////////////////////////////////////
                  // hot news text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 350,
                        width: size.height / 4.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(children: [
                          SizedBox(
                            height: 350,
                            width: double.infinity,
                            child: GestureDetector(
                                onTap: () {
                                  Get.to(const NewsPage());
                                },
                                child: HotNewsListView(size: size)),
                          )
                        ]),
                      ),
                      // this of two Containers that shows news
                      Container(
                        height: 350,
                        width: size.height / 4.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(children: [
                          SizedBox(
                            height: 350,
                            width: double.infinity,
                            child: HotNewsListView(size: size),
                          )
                        ]),
                      ),
                    ],
                  ),
                  //////////////////////////////////////////////////////////////
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.keyboard_double_arrow_left_rounded,
                        color: Colors.blue,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(TableScreen(code: 'PPL'));
                        },
                        child: const Text(
                          'بیشتر',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        " لیگ ایران ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          // fontFamily: 'dubai',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Premier League standings
                  // ‌جدول رده بندی
                  LeaugeScores(
                    size: size,
                    note: '',
                    pic: '',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.keyboard_double_arrow_left_rounded,
                        color: Colors.blue,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LeaguePage());
                        },
                        child: const Text(
                          'بیشتر',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "لیگ انگلستان ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          // fontFamily: 'dubai',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  LeaugeScores(
                    size: size,
                    note: '',
                    pic: '',
                  ),
                  //news text
                  //  const MoreTitle(
                  //    write: Text("اخبار صوتی"),
                  //   ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 50,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: newMethod(context),
                                    // Widget001(),
                                  ),
                                  const Spacer(),
                                  const Text("How is thbest in Eourp"),
                                  const Icon(
                                    Icons.mic,
                                    color: Colors.blue,
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
      //
      // drawer
      drawer: const DrawerBoke(),
    );
  }

  ElevatedButton newMethod(BuildContext context) {
    return ElevatedButton(
        //
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
                                  Icon(Icons.loop_rounded, color: Colors.white),
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
        child: const Icon(Icons.play_arrow_rounded));
  }
}

Widget _pages(int index) {
  final List page = ["News", "Audio", "Match", "Leauge"];
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        //  border:
        // Border.all(color: Colors.black12, width: 1),
      ),
      child: Center(child: Text(page[index])),
    ),
  );
}
