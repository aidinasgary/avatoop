import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String tag = '/ProfileScreenRoute';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("آوا توپ!",
          textDirection: TextDirection.rtl, style: TextStyle(fontFamily: 'Dubai'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 17, left: 225),
            child: Text("حساب کاربری",
              style: TextStyle(fontSize: 24, fontFamily: 'Dubai'),
              textDirection: TextDirection.rtl,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            width: 355,
            height: 1.5,
            color: Colors.black,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 170),
                  child: Image(image: AssetImage("assets/images/profile.png")),
                ),
                Column(
                  children: [
                    Container(),
                    Container(),
                    Container()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
