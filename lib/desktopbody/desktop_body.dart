import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled16/view/TableScreen.dart';
import 'package:untitled16/view/hot_news_page.dart';
import 'package:untitled16/view/league_page.dart';
import 'package:untitled16/view/sound_player.dart';
import 'package:untitled16/widgets/custom_slider.dart';
import '../view/Other/stable_classes.dart';
import '../view/new_page.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
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
                      onTap: () => Get.to(HotNewsPage()), child: _pages(0)),
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
                height: size.width / 1.6,
                width: size.width / 2.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  Expanded(
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
                height: size.width / 1.6,
                width: size.width / 2.2,
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
          //////////////////////////////////////////////////////////////
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8.0),
            child: Row(
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
                  "لیگ ایران و اسپانیا",
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
            children: [
              LeaugeScores(
                width: size.width / 2.15,
                size: size,
                note: '',
                pic: '',
              ),
              LeaugeScores(
                width: size.width / 2.15,
                size: size,
                note: '',
                pic: '',
              ),
            ],
          ),
          const SizedBox(height: 20),
          // more botton
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
                  "لیگ انگلستان و فرانسه",
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
          // leauge scores
          Row(
            children: [
              LeaugeScores(
                width: size.width / 2.15,
                size: size,
                note: '',
                pic: '',
              ),
              LeaugeScores(
                width: size.width / 2.15,
                size: size,
                note: '',
                pic: '',
              ),
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
                      margin: const EdgeInsets.symmetric(horizontal: 10),
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
          )
        ]),
      ),
      //
      // drawer
      drawer: const DrawerBoke(),
    );
  }

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
