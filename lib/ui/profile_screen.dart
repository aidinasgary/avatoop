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
        backgroundColor: Colors.indigo,
        title: Text('آواتوپ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25, fontFamily: 'dubai' ),
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
            padding: EdgeInsets.only(top: 12, left: 220),
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
                child: Image.asset('assets/images/profile.png', width: 120),
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 8),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: FloatingActionButton.extended(
                  onPressed: (){},
                  icon: const Icon(Icons.settings_outlined),
                  label: Text('ویرایش مشخصات و تیم',
                    style: TextStyle(fontSize: 15, fontFamily: 'dubai'),
                  ),
                  backgroundColor: Colors.blue,
                  elevation: 0,
                ),
                padding: EdgeInsets.only(left: 20, top: 6),
              ),
              Container(
                child: FloatingActionButton.extended(
                  onPressed: (){},
                  icon: const Icon(Icons.exit_to_app),
                  label: Text('خروج',
                    style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                  ),
                  backgroundColor: Colors.red,
                  elevation: 0,
                ),
                padding: EdgeInsets.only(left: 17, top: 6),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: EdgeInsets.only(top: 10, left: 106, right:20 , bottom: 10),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text('تیم های محبوب شما',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'dubai', fontSize: 23),
                  ),
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Container(
                  child: Text('پرسپولیس - رئال مادرید - چلسی',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'dubai', fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: const Text("اخبار تیم های محبوب شما",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'dubai', fontSize: 26),
            ),
            padding: EdgeInsets.only(top: 17, left: 100),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 1.8),
            margin: EdgeInsets.only(top: 5, right: 20, left: 20),
          ),
        ],
      ),
       );
  }
}
