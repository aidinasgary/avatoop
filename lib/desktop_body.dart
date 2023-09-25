import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled16/view/folder02/TableScreen.dart';
import 'package:untitled16/view/folder02/hot_news_page.dart';
import 'package:untitled16/view/folder02/league_page.dart';
import 'package:untitled16/view/folder02/sound_player.dart';
import 'view/folder01/stable_classes.dart';
import 'view/folder02/new_page.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List image = [
      //"assets/images/seraie_a_league.jpg",
      "assets/images/premier_league.png",
      "assets/images/ligue_1.png",
      "assets/images/laliga_league.png",
      //"assets/images/Bundesliga_league.png",
      //"assets/images/azadegan_league.jpg "
    ];
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
          const CustomSlider(),
          // amiri make changes here
          //ListView---------------------------
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
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
                      onTap: () => Get.to(LeaguePage()), child: _pages(3)),
                ]),
              ),
            ),
          ),
          //----------------------------------------------

          // hot news text
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 30, 8),
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
                height: size.width / 2.0,
                width: size.width / 3.1,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(children: []),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: size.width / 3.0,
                        width: size.width / 3.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Get.to(const NewsPage());
                              },
                              child: HotNewsListView(size: size)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // this of two Containers that shows news
                      Container(
                        height: size.width / 3.0,
                        width: size.width / 3.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Expanded(
                          child: GestureDetector(
                              onTap: () {}, child: HotNewsListView(size: size)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // this of two Containers that shows news
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.width / 6.5,
                      width: size.width / 1.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: size.height / 4.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height / 4.0,
                  width: size.height / 4.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            image[index],
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),

          //////////////////////////////////////////////////////////////
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const TableScreen(code: 'PPL'));
                  },
                  child: const Text(
                    'بیشتر',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(),
                const Text(
                  "لیگ ایران  ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // fontFamily: 'dubai',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(),
                const Text(
                  "  لیگ اسپانیا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // fontFamily: 'dubai',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(),
                const Text(
                  "  لیگ عربستان",
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
          // Premier League standings
          // ‌جدول رده بندی
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              ),
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              ),
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              )
            ],
          ),
          const SizedBox(height: 20),
          //////////////////////////////////////////////////////////////////////
          // more botton
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const LeaguePage());
                  },
                  child: const Text(
                    'بیشتر',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),
                const Text(
                  "لیگ انگلستان  ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // fontFamily: 'dubai',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "  لیگ فرانسه",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // fontFamily: 'dubai',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "  لیگ ایتالیا",
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
          //////////////////////////////////////////////////////////////////////
          // leauge scores
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              ),
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              ),
              LeaugeWidget(
                size: size,
                A: size.width / 2.0,
                B: size.width / 3.1,
                C: 50,
                D: double.infinity,
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const LeaguePage());
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
                  "اخبار صوتی",
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

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VoiceWid(),
              VoiceWid(),
            ],
          ),

          const SizedBox(height: 15), const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: size.height / 2.0,
            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
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
                                  image: AssetImage('assets/images/img_3.png'),
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
                                  image: AssetImage('assets/images/img_4.png'),
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
                                  image: AssetImage('assets/images/img_5.png'),
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
          ),
        ]),
      ),
      //
      // drawer
    );
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
}

class VoiceWid extends StatelessWidget {
  const VoiceWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.1,
      height: size.height / 1.5,
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
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          Get.to(const AudioPlayerScreen());
                        },
                        icon: const Icon(Icons.play_arrow_rounded),
                      )
                      // newMethod(context),
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
    );
  }
}
