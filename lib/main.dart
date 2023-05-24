import 'package:flutter/material.dart';
import 'package:untitled16/ui/ertebat_screen.dart';
import 'package:untitled16/ui/home_page.dart';
import 'package:untitled16/ui/jadval_mosabeghat_screen.dart';
import 'package:untitled16/ui/profile_screen.dart';

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
      home:HomePage(),
      routes:{

        JadvalMosabeghat.tag : (context)=>JadvalMosabeghat(),
        ErtebatScreen.tag : (context)=>ErtebatScreen(),
        ProfileScreen.tag : (context)=>ProfileScreen(),
      }

    );
  }
}

