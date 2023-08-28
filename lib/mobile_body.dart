import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:untitled16/view/League_page.dart';
import 'package:untitled16/view/folder02/TableScreen.dart';
import 'package:untitled16/view/folder02/hot_news_page.dart';
import 'package:untitled16/view/folder02/sound_player.dart';
import 'package:untitled16/widgets/custom_slider.dart';

import 'view/folder01/stable_classes.dart';
import 'view/folder02/new_page.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
        (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox(context as BuildContext);
            setState(() => isAlertSet = true);
          }
        },
      );

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

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
                    width: double.infinity,
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
                    width: double.infinity,
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
                                      child: IconButton(
                                        onPressed: () {
                                          Get.to(const AudioPlayerScreen());
                                        },
                                        icon: const Icon(
                                            Icons.play_arrow_rounded),
                                      )
                                      //newMethod(context),
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
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/img_3.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/img_4.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/img_5.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Avatoop.com',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'sarzaminhooshmand',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '09915957342',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ارتباط با ما',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'آی دی اینستاکرام',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'آی دی تلگرام',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'شماره تماس',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Avatoop',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.sports_soccer,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'آواتوپ، اولین وبسایت خبرگزاری صوتی',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'ایران است که سعی دارد با استفاده',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' از هوش مصنوعی، راحتی شما را',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'در شنیدن اخبار ورزشی فراهم نماید.',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
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

  showDialogBox(BuildContext context) => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('No Connection'),
          content: const Text('Please check your internet connectivity'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected) {
                  showDialogBox(context);
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
/*
  ElevatedButton newMethod(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(12)),
                          child: const SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: AudioPlayerScreen()),
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
  }*/
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
