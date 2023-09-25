import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:untitled16/view/folder02/hot_news_page.dart';
import 'package:untitled16/view/folder02/league_page.dart';
import 'package:untitled16/view/folder02/sound_player.dart';

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
            // ignore: use_build_context_synchronously
            showDialogBox(context);
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
                            onTap: () => Get.to(const HotNewsPage()),
                            child: _pages(0)),
                        GestureDetector(onTap: () => {}, child: _pages(1)),
                        GestureDetector(onTap: () {}, child: _pages(2)),
                        GestureDetector(
                            onTap: () => Get.to(const LeaguePage()),
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
                            Get.to(const HotNewsPage());
                          },
                          child: const Text(
                            'بیشتر',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "    اخبار داغ !",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            // fontFamily: 'dubai',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /////////////////////////////////////////////////////
                  // hot news text
                  // this of two Containers that shows news
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NewWidgetContainer(
                        size: size,
                        child: HotNewsListView(size: size),
                      ),
                      NewWidgetContainer(
                        size: size,
                        child: HotNewsListView(size: size),
                      ),
                    ],
                  ),
                  //////////////////////////////////////////////////////////////
                  const SizedBox(height: 20),
                  NewWidgetText(
                    size: size,
                    text: "بیشتر",
                    subtitle: "       لیگ فرانسه ",
                    icon: "    لیگ ایران",
                  ),
                  // Premier League standings
                  // ‌جدول رده بندی

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LeaugeWidget(size: size),
                      LeaugeWidget(size: size),
                    ],
                  ),
                  const SizedBox(height: 10),
                  NewWidgetText(
                    size: size,
                    text: "بیشتر",
                    subtitle: "لیگ آلمان ",
                    icon: "    لیگ انگلستان",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LeaugeWidget(size: size),
                      LeaugeWidget(size: size),
                    ],
                  ),
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
                              const Text(
                                'Avatoop.com',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                'sarzaminhooshmand',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                '09915957342',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Column(
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
                          const Column(
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
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.sports_soccer,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '''آواتوپ، اولین وبسایت خبرگزاری صوتی
                                  ایران است که سعی دارد با استفاده
                                  از هوش مصنوعی، راحتی شما را
                                 
                                  در شنیدن اخبار ورزشی فراهم نماید.
                                ''',
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
                  // ignore: use_build_context_synchronously
                  showDialogBox(context);
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}

class NewWidgetText extends StatelessWidget {
  const NewWidgetText({
    super.key,
    required this.size,
    required this.text,
    required this.subtitle,
    required this.icon,
  });

  final Size size;
  final String text;
  final String subtitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            const Icon(
              Icons.keyboard_double_arrow_left_rounded,
              color: Colors.blue,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const LeaguePage());
              },
              child: Text(
                text,
                //  'بیشتر',
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          subtitle,
          // "     لیگ فرانسه ",
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            // fontFamily: 'dubai',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: size.width / 3),
        Text(
          icon,
          // "     لیگ ایران ",
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            // fontFamily: 'dubai',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class NewWidgetContainer extends StatelessWidget {
  const NewWidgetContainer({
    super.key,
    required this.size,
    this.child,
  });

  final Size size;
  final dynamic child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        width: size.height / 2.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: GestureDetector(
            onTap: () {
              Get.to(const NewsPage());
            },
            child: child),
      ),
    );
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
