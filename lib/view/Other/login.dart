import 'package:flutter/material.dart';
import 'package:untitled16/view/Other/profile_screen.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  static const String tag = '/loginRoute';
  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'ورود به حساب کاربری',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'dubai'),
            ),
            bottom: const TabBar(
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
                  padding: const EdgeInsets.only(top: 20, left: 60),
                  child: const Text(
                    'لطفا شماره تلفن همراه خود را وارد کنید:',
                    style: TextStyle(fontFamily: 'dubai', fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 100, right: 20, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '                       09xxxxxxxxx :مثال',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.of(context).pushNamed(ProfileScreen.tag);
                        },
                        icon: const Icon(Icons.navigate_next),
                        label: const Text(
                          'ادامه',
                          style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                        ),
                        backgroundColor: Colors.green,
                        elevation: 0,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: const Text(
                        'خطا: این شماره هنوز ثبت نام نشده!',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'dubai',
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/loginpage.jpg',
                  width: 1000,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: const Text(
                    'لطفا مشخصات خود را وارد نمایید:',
                    style: TextStyle(fontFamily: 'dubai', fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '     :نام کاربری (با حروف انگلیسی)',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '       :(09xxxxxxxxx) تلفن همراه     ',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '                :پست الکترونیکی',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'dubai',
                        fontSize: 18,
                      ),
                      alignLabelWithHint: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    icon: const Icon(Icons.account_box_outlined),
                    label: const Text(
                      'ایجاد حساب کاربری',
                      style: TextStyle(fontSize: 16, fontFamily: 'dubai'),
                    ),
                    backgroundColor: Colors.green,
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
