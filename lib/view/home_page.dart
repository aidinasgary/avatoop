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
    List pages = ["News", "Audio", "Match", "Leauge"];

    return Scaffold(
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
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: pages.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.black12, width: 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 1.0,
                                    offset: Offset(2, 2)),
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 1.0,
                                    offset: Offset(-2, -2))
                              ]),
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
                        height: 300,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
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
