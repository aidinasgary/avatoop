import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JadvalMosabeghat extends StatefulWidget {
  const JadvalMosabeghat({Key? key}) : super(key: key);
static const String tag = '/JadvalMosabeghatRoute';
  @override
  State<JadvalMosabeghat> createState() => _JadvalMosabeghatState();
}

class _JadvalMosabeghatState extends State<JadvalMosabeghat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('جدول مسابقات'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){},
                    child:
                    Stack(
                      children:[
                        Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.purpleAccent,
                        ),
                      ),
                        Positioned(
                            top: 20,
                            left: 22,

                            child: Text('لیگ ایران',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)),

                        Positioned(
                        bottom: 0
                        ,child: Image(image: AssetImage( 'assets/images/img.png'),height: 50,))
                      ]

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){},
                      child:
                      Stack(
                          children:[
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                color: Colors.purpleAccent,
                              ),
                            ),
                            Positioned(
                                top: 20,
                                left: 22,

                                child: Text('لیگ خارجی',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)),

                            Positioned(
                                bottom: 0
                                ,child: Image(image: AssetImage( 'assets/images/img.png'),height: 50,))
                          ]

                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){},
                      child:
                      Stack(
                          children:[
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                color: Colors.purpleAccent,
                              ),
                            ),
                            Positioned(
                                top: 20,
                                left: 22,

                                child: Text('لیگ اروپا',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)),

                            Positioned(
                                bottom: 0
                                ,child: Image(image: AssetImage( 'assets/images/img.png'),height: 50,))
                          ]

                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){},
                      child:
                      Stack(
                          children:[
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                color: Colors.purpleAccent,
                              ),
                            ),
                            Positioned(
                                top: 20,
                                left: 22,

                                child: Text('لیگ قهرمانان',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)),

                            Positioned(
                                bottom: 0
                                ,child: Image(image: AssetImage( 'assets/images/img.png'),height: 50,))
                          ]

                      ),),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
