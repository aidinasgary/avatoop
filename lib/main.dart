import 'package:flutter/material.dart';
import 'package:untitled16/view/League_page.dart';
import 'package:untitled16/view/Other/ertebat_screen.dart';
import 'package:untitled16/view/Other/login.dart';
import 'package:untitled16/view/Other/profile_screen.dart';
import 'package:untitled16/home_page.dart';
import 'package:untitled16/view/sound_player.dart';

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
        home: //SoundPlayer(),
            // HotNewsPage(),
            //SoundPlayer(),
            // HomeScreen(),
            const HomePage(),
        routes: {
          //JadvalMosabeghat.tag: (context) => JadvalMosabeghat(),
          ErtebatScreen.tag: (context) => const ErtebatScreen(),
          ProfileScreen.tag: (context) => const ProfileScreen(),
          login.tag: (context) => const login(),
          SoundPlayer.tag: (context) => const SoundPlayer(),
          LeaguePage.tag: (context) => LeaguePage()
        });
  }
}
