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
        title: const Text("آوا توپ!",
          textDirection: TextDirection.rtl, style: TextStyle(fontFamily: 'Dubai'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: const Text("حساب کاربری",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'dubai', fontSize: 26),
            ),
            padding: EdgeInsets.only(top: 12, left: 235),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 1.8),
            margin: EdgeInsets.only(top: 5, right: 20, left: 20),
          ),
          Row(
            children: [
              Column(
              children: [
                Container(
                  child: Text('جعفر جعفری',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 20, fontFamily: 'dubai'),
                  ),
                  padding: EdgeInsets.only(left: 133, bottom: 10),
                ),
                Row(
                  children: [
                    Container(
                    child: Text('@jafarjafari',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontFamily: 'dubai', fontSize: 17),
                    ),
                    margin: EdgeInsets.only(left: 75),
                  ),
                    Container(
                      child: Text('نام کاربری:',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontFamily: 'dubai', fontSize: 17),
                      ),
                      margin: EdgeInsets.only(left:3),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text('jafarjafari@gmail.com',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 17, fontFamily: 'dubai'),
                      ),
                      margin: EdgeInsets.only(left: 33),
                    ),
                    Container(
                      child: Text('ایمیل:',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 17, fontFamily: 'dubai'),
                      ),
                      margin: EdgeInsets.only(left: 3),
                    ),
                  ],
                ),
              ],
            ),
              Container(
                child: Image.asset('assets/images/profile.png', width: 130),
                margin: EdgeInsets.only(top: 20, left: 30, bottom: 8),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text('ویرایش مشخصات و تیم')
                ),
                margin: EdgeInsets.only(left: 20),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text('خروج')
                ),
                margin: EdgeInsets.only(left: 20),
              ),
            ],
          ),
        ],
      ),
       );
  }
}
