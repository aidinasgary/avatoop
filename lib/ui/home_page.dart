import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled16/ui/ertebat_screen.dart';
import 'package:untitled16/ui/jadval_mosabeghat_screen.dart';
import 'package:untitled16/ui/profile_screen.dart';
import 'package:untitled16/widgets/custom_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            floating: true,
            title: Text(
              'آواتوپ',
              style: TextStyle( fontSize: 30),
            ),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Column(
                  children: [
                  const CustomSlider(),
                    // hot news text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ' ! اخبار داغ ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //black line
                    Container(
                      color: Colors.black,
                      width: 350,
                      height: 1,
                    ),
                    //hot news
                    Container(
                      margin: EdgeInsets.all(20),
                      width: 350,
                      height: 200,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 340,
                              height: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  color: Colors.amber),
                            ),
                          ),
                          Positioned(
                              top: 90,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.lightBlueAccent),
                                child: Icon(Icons.navigate_before),
                              )),
                          Positioned(
                              top: 90,
                              right: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.lightBlueAccent),
                                child: Icon(Icons.navigate_next_rounded),
                              )),
                        ],
                      ),
                    ),
                    //news text
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اخبار  ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //black line
                    Container(
                      color: Colors.black,
                      width: 350,
                      height: 1,
                    ),
                    //news
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.red,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                                ElevatedButton(onPressed: (){}, child: Text('سایر خبر ها'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //black line
                    Container(
                      color: Colors.black,
                      width: 350,
                      height: 1,
                    ),
                    //must visited news text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'پر بازدید ترین خبر ها ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //black line
                    Container(
                      color: Colors.black,
                      width: 350,
                      height: 1,
                    ),
                    //must vistet news
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.red,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.perm_camera_mic_rounded,
                                      color: Colors.green,
                                    ),
                                    Text('بخشی از متن خبر یا عنوان آن')
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.grey,
                                  width: 350,
                                  height: 2,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            )
          ]))
        ],
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
                Navigator.of(context).pushNamed(ProfileScreen.tag);
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
