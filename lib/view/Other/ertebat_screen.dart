import 'package:flutter/material.dart';

class ErtebatScreen extends StatefulWidget {
  const ErtebatScreen({Key? key}) : super(key: key);
  static const String tag = '/ErtebatScreenRoute';
  @override
  State<ErtebatScreen> createState() => _ErtebatScreenState();
}

class _ErtebatScreenState extends State<ErtebatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ارتباط با ما',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'dubai'),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12, left: 270),
            child: const Text(
              "ارتباط با ما",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'dubai', fontSize: 26),
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 1.8),
            margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Image.asset('assets/images/img_1.png', width: 370),
          ),
          Container(
            height: 170,
            //width: 400,
            padding: const EdgeInsets.all(19.0),
            child: const Column(
              children: [
                Text(
                    'آواتوپ، اولین وبسایت خبرگزاری صوتی ایران است که سعی دارد با استفاده از هوش مصنوعی، راحتی شما را در شنیدن اخبار ورزشی فراهم نماید.',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'dubai'),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/images/img_2.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/images/img_3.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/images/img_4.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/images/img_5.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
