import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled16/controller/slider_model.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: CarouselSlider.builder(
          itemCount: SliderModels.items.length,
          itemBuilder: (context, index, realindex) {
            return Container(
              margin: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: (AssetImage(SliderModels.items[index].image)),
                      fit: BoxFit.fill)),
            );
          },
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
