import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:untitled16/desktopbody/desktop_body.dart';
import 'package:untitled16/view/League_page.dart';
import 'package:untitled16/view/Other/ertebat_screen.dart';
import 'package:untitled16/view/Other/login.dart';
import 'package:untitled16/view/Other/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: //SoundPlayer(),
            // HotNewsPage(),
            //SoundPlayer(),
            //HomeScreen(),
            const DesktopBody(),
        // AudioPlayerScreen(),
        routes: {
          //JadvalMosabeghat.tag: (context) => JadvalMosabeghat(),
          ErtebatScreen.tag: (context) => const ErtebatScreen(),
          ProfileScreen.tag: (context) => const ProfileScreen(),
          login.tag: (context) => const login(),
          // SoundPlayer.tag: (context) => const SoundPlayer(),
          LeaguePage.tag: (context) => LeaguePage()
        });
  }
}

class ResponsivLyout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsivLyout(
      {super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
