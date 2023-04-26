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
      body: SingleChildScrollView(
        child: Column(
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
            ),
            //iran leg text
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' لیگ ایران  ',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            //black line
            Container(
              color: Colors.black,
              width: 350,
              height: 1,
            ),
            //leg iran
            Container(
              margin: EdgeInsets.all(5),
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Text('لیگ آزادگان',style: TextStyle(color: Colors.purpleAccent),),
                      Text('لیگ برتر',style: TextStyle(color: Colors.red),),
                    ],
                  ),
                  Container(
                    child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('بازی',style: TextStyle(color: Colors.red),),
                              Text('امتیاز',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تیم',style: TextStyle(color: Colors.red),),
                              Text('رتبه',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('16'),
                              Text('54'),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('پرسپولیس'),
                              Text('1'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('استقلال'),
                            Text('2'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('سپاهان'),
                            Text('3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                 ElevatedButton(onPressed: (){}, child: Text('سایر تیم ها'))
                ],
              ),
            ),
            //kharej leg text
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' لیگ خارجی  ',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            //kharej leg
            Container(
              margin: EdgeInsets.all(5),
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Text('لیگ اسپانیا',style: TextStyle(color: Colors.red),),
                      Text('لیگ انگلیس',style: TextStyle(color: Colors.purpleAccent),),
                      Text('لیگ ایتالیا',style: TextStyle(color: Colors.red),),
                    ],
                  ),
                  Container(
                    child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('بازی',style: TextStyle(color: Colors.red),),
                              Text('امتیاز',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تیم',style: TextStyle(color: Colors.red),),
                              Text('رتبه',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('16'),
                              Text('54'),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('آرسنال'),
                              Text('1'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('منچستر سیتی'),
                            Text('2'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('لیورپول'),
                            Text('3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                 ElevatedButton(onPressed: (){}, child: Text('سایر تیم ها'))
                ],
              ),
            ),
            //europe leg text
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' لیگ اروپا  ',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            //europe leg
            Container(
              margin: EdgeInsets.all(5),
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Text('A گروه',style: TextStyle(color: Colors.red),),
                      Text('B گروه',style: TextStyle(color: Colors.purpleAccent),),
                      Text('C گروه',style: TextStyle(color: Colors.red),),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('بازی',style: TextStyle(color: Colors.red),),
                              Text('امتیاز',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تیم',style: TextStyle(color: Colors.red),),
                              Text('رتبه',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('16'),
                              Text('54'),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('	فنرباغچه'),
                              Text('1'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('رن'),
                            Text('2'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('دیناموکیف'),
                            Text('3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('سایر تیم ها'))
                ],
              ),
            ),
            //ghahremanan leg text
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' لیگ قهرمانان  ',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            //ghahremanan leg
            Container(
              margin: EdgeInsets.all(5),
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Text('A گروه',style: TextStyle(color: Colors.red),),
                      Text('B گروه',style: TextStyle(color: Colors.purpleAccent),),
                      Text('C گروه',style: TextStyle(color: Colors.red),),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('بازی',style: TextStyle(color: Colors.red),),
                              Text('امتیاز',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تیم',style: TextStyle(color: Colors.red),),
                              Text('رتبه',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('16'),
                              Text('54'),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('	رءال مادرید'),
                              Text('1'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('لایپزیش'),
                            Text('2'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('16'),
                            Text('54'),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('شاختار'),
                            Text('3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 350,
                    height: 2,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('سایر تیم ها'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
