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
        title: const Text(
          'آواتوپ',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 25, fontFamily: 'dubai'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12, left: 220),
            child: const Text(
              "حساب کاربری",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'dubai', fontSize: 26),
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 1.8),
            margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 133, bottom: 10),
                    child: const Text(
                      'جعفر جعفری',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 20, fontFamily: 'dubai'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 75),
                        child: const Text(
                          '@jafarjafari',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontFamily: 'dubai', fontSize: 17),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 3),
                        child: const Text(
                          'نام کاربری:',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontFamily: 'dubai', fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 33),
                        child: const Text(
                          'jafarjafari@gmail.com',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 17, fontFamily: 'dubai'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 3),
                        child: const Text(
                          'ایمیل:',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 17, fontFamily: 'dubai'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, bottom: 8),
                child: Image.asset('assets/images/profile.png', width: 120),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 6),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                  label: const Text(
                    'ویرایش مشخصات و تیم',
                    style: TextStyle(fontSize: 15, fontFamily: 'dubai'),
                  ),
                  backgroundColor: Colors.blue,
                  elevation: 0,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 17, top: 6),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text(
                    'خروج',
                    style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                  ),
                  backgroundColor: Colors.red,
                  elevation: 0,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: const EdgeInsets.only(
                top: 10, left: 106, right: 20, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'تیم های محبوب شما',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'dubai', fontSize: 23),
                  ),
                ),
                const Text(
                  'پرسپولیس - رئال مادرید - چلسی',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontFamily: 'dubai', fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 17, left: 100),
            child: const Text(
              "اخبار تیم های محبوب شما",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'dubai', fontSize: 26),
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 1.8),
            margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
          ),
        ],
      ),
    );
  }
}
