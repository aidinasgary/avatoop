import 'package:flutter/material.dart';

class Widget001 extends StatefulWidget {
  const Widget001({super.key});

  @override
  State<Widget001> createState() => _Widget001State();
}

class _Widget001State extends State<Widget001> with TickerProviderStateMixin {
  final bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        if (_isPlay == false) {
          _controller.forward();
          _isPlay == true;
        } else {
          _controller.reverse();
          _isPlay == false;
        }
      },
      child:
          AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _controller),
    ));
  }
}
