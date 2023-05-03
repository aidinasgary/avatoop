import 'package:flutter/cupertino.dart';
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
        title: Text('ارتباط با ما'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ' ارتباط با ما ',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            width: 350,
            height: 1,
          ),
          Container(
              margin:EdgeInsets.all(10),
              child: Image(image: AssetImage('assets/images/img_1.png'))),
          Container(
            height: 100,
            width: 200,
            child: Column(
              children: [
                Text('آواتوپ، اولین وبسایت خبرگزاری صوتی ایران است که سعی دارد با استفاده از هوش مصنوعی، راحتی شما را در شنیدن اخبار ورزشی فراهم نماید،'),
              ],
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){},
                child:
              Container(
                width: 50,
                height: 50,
                child: Image(image: AssetImage('assets/images/img_2.png'),),),),
              GestureDetector(
                onTap: (){},
                child:
              Container(
                width: 50,
                height: 50,
                child: Image(image: AssetImage('assets/images/img_3.png'),),),),
              GestureDetector(
                onTap: (){},
                child:
              Container(
                width: 50,
                height: 50,
                child: Image(image: AssetImage('assets/images/img_4.png'),),),),
              GestureDetector(
                onTap: (){},
                child:
              Container(
                width: 50,
                height: 50,
                child: Image(image: AssetImage('assets/images/img_5.png'),),),),
            ],
          ),
        ],
      ),
    );
  }
}
