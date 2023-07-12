import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:untitled16/view/League_page.dart';
import 'package:untitled16/view/Other/ertebat_screen.dart';
import 'package:untitled16/view/Other/jadval_mosabeghat_screen.dart';
import 'package:untitled16/view/Other/login.dart';
import 'package:untitled16/view/hot_news_page.dart';
import 'package:untitled16/view/news_pages.dart';
import 'package:untitled16/widgets/custom_slider.dart';

import 'Other/stable_classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List pages = ["News", "Audio", "Match", "Leauge"];

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

                  //----------------------------------------------
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(news_pages.tag);
                    },
                    child:                  SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pages.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              //  border:
                              // Border.all(color: Colors.black12, width: 1),
                            ),
                            child: Center(child: Text(pages[index])),
                          ),


                        ),
                      ),
                    ),

                  ),
                  // hot news text
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          color: Colors.blue,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Get.toNamed( HotNewsPage());
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
                  // hot news text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 350,
                        width: 220,
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
                      Container(
                        height: 350,
                        width: 220,
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
                  const SizedBox(height: 20),
                  // Premier League standings
                  // ‌جدول رده بندی
                  NewWidget(size: size),
                  const SizedBox(height: 20),
                  NewWidget(size: size),
                  //news text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_left_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                'بیشتر',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'اخبار صوتی',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Colors.purple,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            LinearPercentIndicator(
                                                              percent: 1.0,
                                                              backgroundColor:
                                                                  Colors.teal,
                                                              progressColor:
                                                                  Colors.amber,
                                                            ),
                                                            const Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .skip_previous_rounded,
                                                                    color: Colors
                                                                        .white),
                                                                Icon(
                                                                  Icons
                                                                      .play_circle_fill_rounded,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40,
                                                                ),
                                                                Icon(
                                                                    Icons
                                                                        .skip_next_rounded,
                                                                    color: Colors
                                                                        .white),
                                                                SizedBox(),
                                                                Icon(
                                                                    Icons
                                                                        .loop_rounded,
                                                                    color: Colors
                                                                        .white),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Cluse')),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child:
                                          const Icon(Icons.play_arrow_rounded)),
                                  // Widget001(),
                                ),
                                const Spacer(),
                                Text("How is thbest in Eourp"),
                                Icon(
                                  Icons.mic,
                                  color: Colors.blue,
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                child: UserAccountsDrawerHeader(
                  accountName: Text('aidn asgary'),
                  accountEmail: Text('aidin@gmail.com'),
                  decoration: BoxDecoration(color: Colors.indigo),
                  currentAccountPictureSize: Size.square(35),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text('aa'),
                  ),
                )),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.sports_soccer),
                  Text('  جدول مسابقات'),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed(LeaguePage.tag);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.account_circle),
                  Text('  حساب کاربری'),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed(login.tag);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.phone),
                  Text('  ارتباط با ما '),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ErtebatScreen.tag);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return StableContainer(
      Width: double.infinity,
      Height: size.width / 1.1,
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('جدول رده بندی لیگ برتر خلیج فارس'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    width: size.width / 6,
                    child: Image.asset(
                      'assets/images/dow.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    width: 1,
                    color: Colors.green,
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("GD"),
                  Text("D"),
                  Text("L"),
                  Text("W"),
                  Text("MP"),
                  SizedBox(width: size.width / 2.5),
                  Text("باشگاه"),
                ],
              )),
          SizedBox(
            height: size.width / 1.6,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                      height: size.width / 10,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            width: 1,
                            color: Colors.green,
                          ))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("No."),
                          Text("No."),
                          Text("No."),
                          Text("No."),
                          SizedBox(width: size.width / 3),
                          Icon(Icons.hot_tub),
                          Text("No."),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("No."),
                  Text("No."),
                  Text("No."),
                  Text("No."),
                  SizedBox(width: size.width / 3),
                  Icon(Icons.hot_tub),
                  Text("No."),
                ],
              )),
        ],
      ),
    );
  }
}
