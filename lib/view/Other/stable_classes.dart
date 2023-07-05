import 'package:flutter/material.dart';

// Container with Padding
class StableContainer extends StatelessWidget {
  const StableContainer({
    super.key,
    required this.Width,
    required this.child,
    required this.Height,
  });
  final Width;
  final Height;
  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: Height,
        width: Width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}

// ListView wth var size

class HotNewsListView extends StatelessWidget {
  const HotNewsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height / 9,
                    width: size.width / 4,
                    child: const Text(
                        "برنامه بازی‌های لیگ قهرمانان اروپا به همراه جدول بازی‌های لیگ قهرمانان اروپا و نتایج زنده بازی‌های آن و بازی‌های باقیمانده لیگ ..."),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 70,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ));
  }
}
