import 'package:flutter/material.dart';

class news_model extends StatelessWidget {
  const news_model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text('noooooooooooooooo'),

          Container(

            width: 100,
            height: 100,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 12.0,
                    spreadRadius: 4.0,

                  )
                ],
                color: Colors.red,
              borderRadius: BorderRadius.circular(15)
            ),
          ),
        ],
      ),
    );
  }
}
