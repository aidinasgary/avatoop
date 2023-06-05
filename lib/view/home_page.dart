import 'package:flutter/material.dart';
import 'package:untitled16/view/Other/ertebat_screen.dart';
import 'package:untitled16/view/Other/jadval_mosabeghat_screen.dart';
import 'package:untitled16/view/Other/login.dart';
import 'package:untitled16/widgets/custom_slider.dart';

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

                  SizedBox(
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
                  //----------------------------------------------

                  // hot news text
                  Container(
                    padding: const EdgeInsets.only(top: 12, left: 278),
                    child: const Text(
                      "اخبار داغ !",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: 'dubai', fontSize: 26),
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
                          color: Colors.red,
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
                          color: Colors.red,
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
                  SizedBox(height: 20),
                  // Premier League standings
                  // ‌جدول رده بندی
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  //news text
                  Text(
                    'اخبار  ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
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
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
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
                Navigator.of(context).pushNamed(JadvalMosabeghat.tag);
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

  void Voice_Play() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (context) {
        return Container(
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Icon(Icons.play_arrow))
            ],
          ),
        );
      },
    );
  }
}

class HotNewsListView extends StatelessWidget {
  const HotNewsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height / 9,
                    width: size.width / 4,
                    child: Text(
                        "برنامه بازی‌های لیگ قهرمانان اروپا به همراه جدول بازی‌های لیگ قهرمانان اروپا و نتایج زنده بازی‌های آن و بازی‌های باقیمانده لیگ ..."),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 70,
                    color: Colors.white,
                  ),
                ],
              ),
            ));
  }
}
