import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/news_model.dart';

class news_pages extends StatefulWidget {
  const news_pages({Key? key}) : super(key: key);
static const String tag = '/news_pagesRoute';
  @override
  State<news_pages> createState() => _news_pagesState();
}

class _news_pagesState extends State<news_pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('news page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          news_model(),
          news_model(),
          news_model(),
          news_model(),
          news_model(),
          news_model(),
          news_model(),
          news_model(),
        ],
      ),
    );
  }
}
