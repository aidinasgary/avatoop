import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled16/view/Other/profile_screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  static const String tag = '/loginRoute';
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'ورود به حساب کاربری',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'dubai'),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'ورود',
                  icon: Icon(Icons.login),
                ),
                Tab(
                  text: 'ثبت نام',
                  icon: Icon(Icons.add_task_outlined),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                Container(
                  child: Text(
                    'لطفا شماره تلفن همراه خود را وارد کنید:',
                    style: TextStyle(fontFamily: 'dubai', fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  padding: EdgeInsets.only(top: 20, left: 60),
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '                       09xxxxxxxxx :مثال',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 100, right: 20, top: 10),
                ),
                Row(
                  children: [
                    Container(
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.of(context).pushNamed(ProfileScreen.tag);
                        },
                        icon: const Icon(Icons.navigate_next),
                        label: Text(
                          'ادامه',
                          style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                        ),
                        backgroundColor: Colors.green,
                        elevation: 0,
                      ),
                      padding: EdgeInsets.only(left: 20, top: 10),
                    ),
                    Container(
                      child: Text(
                        'خطا: این شماره هنوز ثبت نام نشده!',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'dubai',
                            color: Colors.red),
                      ),
                      padding: EdgeInsets.only(left: 12, top: 10),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(
                    'assets/images/loginpage.jpg',
                    width: 1000,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    'لطفا مشخصات خود را وارد نمایید:',
                    style: TextStyle(fontFamily: 'dubai', fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  padding: EdgeInsets.only(top: 20, left: 5),
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '     :نام کاربری (با حروف انگلیسی)',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '       :(09xxxxxxxxx) تلفن همراه     ',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '                :پست الکترونیکی',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                ),
                Container(
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    icon: const Icon(Icons.account_box_outlined),
                    label: Text(
                      'ایجاد حساب کاربری',
                      style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                    ),
                    backgroundColor: Colors.green,
                    elevation: 0,
                  ),
                  padding: EdgeInsets.only(top: 10),
                ),
              ],
            ),
          ]),
        ));
  }
}
