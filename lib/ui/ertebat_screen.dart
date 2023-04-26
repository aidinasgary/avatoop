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
        title:Text(
          'ertebat'
        ),
      ),
    );
  }
}
