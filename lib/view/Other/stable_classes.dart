import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:untitled16/model/avatoop_fack_data.dart';

import '../League_page.dart';
import 'ertebat_screen.dart';

// Container with Padding
class StableContainer extends StatelessWidget {
  const StableContainer({
    super.key,
    required this.width,
    required this.child,
    required this.height,
  });
  // ignore: prefer_typing_uninitialized_variables
  final width;
  // ignore: prefer_typing_uninitialized_variables
  final height;
  // ignore: prefer_typing_uninitialized_variables
  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}

// ListView wth var size

class HotNewsListView extends StatelessWidget {
  const HotNewsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: size.width / 8,
                      width: size.width / 4,
                      child: Text(
                        hotNews[index].title,
                        maxLines: 3,
                      )),
                  Container(
                    height: size.width / 5.5,
                    width: size.width / 5.8,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ));
  }
}

//////
/// leauge scores

class LeaugeScores extends StatelessWidget {
  const LeaugeScores({
    super.key,
    required this.size,
    required this.note,
    required this.pic,
  });

  final Size size;
  final String note;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return StableContainer(
      width: double.infinity,
      height: size.width / 1.1,
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(note),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    width: size.width / 6,
                    child: Image.asset(
                      pic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                      horizontal: BorderSide(
                    width: 1,
                    color: Colors.green,
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("GD"),
                  const Text("D"),
                  const Text("L"),
                  const Text("W"),
                  const Text("MP"),
                  SizedBox(width: size.width / 2.5),
                  const Text("باشگاه"),
                ],
              )),
          SizedBox(
            height: size.width / 1.6,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                      height: size.width / 10,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            width: 1,
                            color: Colors.green,
                          ))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("No."),
                          const Text("No."),
                          const Text("No."),
                          const Text("No."),
                          SizedBox(width: size.width / 3),
                          const Icon(Icons.hot_tub),
                          const Text("No."),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("No."),
                  const Text("No."),
                  const Text("No."),
                  const Text("No."),
                  SizedBox(width: size.width / 3),
                  const Icon(Icons.hot_tub),
                  const Text("No."),
                ],
              )),
        ],
      ),
    );
  }
}

//
// Drawer its here

class DrawerBoke extends StatelessWidget {
  const DrawerBoke({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
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
            title: const Row(
              children: [
                Icon(Icons.sports_soccer),
                Text('  جدول مسابقات'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(LeaguePage.tag);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.account_circle),
                Text('  حساب کاربری'),
              ],
            ),
            onTap: () {
              // Navigator.of(context).pushNamed(login.tag);
            },
          ),
          ListTile(
            title: const Row(
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
    );
  }
}
//

class MoreTitle extends StatelessWidget {
  const MoreTitle({
    super.key,
    required this.write,
  });
  // ignore: prefer_typing_uninitialized_variables
  final write;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.blue,
                ),
                Text(
                  'بیشتر',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            write,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
