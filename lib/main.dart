import 'package:flutter/material.dart';
import 'package:untitled16/view/Other/ertebat_screen.dart';
import 'package:untitled16/view/Other/jadval_mosabeghat_screen.dart';
import 'package:untitled16/view/Other/login.dart';
import 'package:untitled16/view/Other/profile_screen.dart';
import 'package:untitled16/view/home_page.dart';
import 'package:untitled16/view/hot_news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: // HotNewsPage(),
            //SoundPlayer(),
            // HomeScreen(),
            HomePage(),
        routes: {
          JadvalMosabeghat.tag: (context) => JadvalMosabeghat(),
          ErtebatScreen.tag: (context) => ErtebatScreen(),
          ProfileScreen.tag: (context) => ProfileScreen(),
          login.tag: (context) => login()
          // SoundPlayer.tag: (context) =>SoundPlayer(),
        });
  }
}
