import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled16/model/avatoop_fack_data.dart';
import 'package:untitled16/view/folder01/login.dart';

import '../folder02/league_page.dart';
import 'ertebat_screen.dart';

// Container with Padding
class StableContainer extends StatelessWidget {
  const StableContainer({
    super.key,
    required this.width,
    required this.child,
    required this.height,
  });
  // ignore: prefer_typing_uninitialized_variables
  final width;
  // ignore: prefer_typing_uninitialized_variables
  final height;
  // ignore: prefer_typing_uninitialized_variables
  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}

// ListView with var size

class HotNewsListView extends StatelessWidget {
  const HotNewsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  hotNews[index].title,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  maxLines: 3,
                ),
                trailing: Container(
                  height: size.height / 3.0,
                  width: size.width / 5.8,
                  color: Colors.blueAccent,
                  child: Image.network(
                    hotNews[index].images,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ));
  }
}

//////
/// leauge scores

class LeaugeWidget extends StatelessWidget {
  const LeaugeWidget({
    super.key,
    required this.size,
    this.A,
    this.B,
    this.C,
    this.D,
  });

  final Size size;
  final dynamic A;
  final dynamic B;
  final dynamic C;
  final dynamic D;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: A, //350,
      width: B, //size.height / 2.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: C, //40,
            width: D, //double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Color(0xff3F1052),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Pts",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "L",
                  style: TextStyle(color: Colors.white),
                ), // as Lose
                Text(
                  "D",
                  style: TextStyle(color: Colors.white),
                ), // as Draw
                Text(
                  "W",
                  style: TextStyle(color: Colors.white),
                ), //as win

                Text(
                  "MP",
                  style: TextStyle(color: Colors.white),
                ), // as Matche's

                Text(
                  "Team",
                  style: TextStyle(color: Colors.white),
                ), // as Poent's
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (context, index) => ListTile(
                trailing: Image.network(
                    "data:image/jpeg;base64,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",
                    scale: 2),
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("a"),
                    Text("a"),
                    Text("a"),
                    Text("a"),
                    Text("a"),
                    SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
// Drawer its here

class DrawerBoke extends StatelessWidget {
  const DrawerBoke({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: UserAccountsDrawerHeader(
                accountName: Text('aidn asgary'),
                accountEmail: Text('aidin@gmail.com'),
                decoration: BoxDecoration(color: Colors.indigo),
                currentAccountPictureSize: Size.square(35),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('aa'),
                ),
              )),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.sports_soccer),
                Text('  جدول مسابقات'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(LeaguePage.tag);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.account_circle),
                Text('  حساب کاربری'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(login.tag);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.phone),
                Text('  ارتباط با ما '),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(ErtebatScreen.tag);
            },
          ),
        ],
      ),
    );
  }
}
//

class MoreTitle extends StatelessWidget {
  const MoreTitle({
    super.key,
    required this.write,
  });
  // ignore: prefer_typing_uninitialized_variables
  final write;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.blue,
                ),
                Text(
                  'بیشتر',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            write,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////
/// stabel Container
class LeagueContainer extends StatelessWidget {
  final String image;

  const LeagueContainer({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(image),
    );
  }
}

/////////////////////////////////////////
///Custom Slider

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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

class SliderModels {
  final String image;
  SliderModels(this.image);

  static final List<SliderModels> items = [
    SliderModels('assets/images/avatoop1.jpg'),
    SliderModels('assets/images/avatoop2.jpg'),
    SliderModels('assets/images/avatoop3.jpg'),
    SliderModels('assets/images/avatoop4.jpg'),
    SliderModels('assets/images/avatoop5.jpg'),
  ];
}

///This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class Assets {
  Assets._();

  static const String assets1672129479Esteghlal =
      'assets/1672129479_esteghlal.jpg';
  static const String fontsDUBAIBOLD = 'assets/fonts/DUBAI-BOLD.TTF';
  static const String fontsDUBAILIGHT = 'assets/fonts/DUBAI-LIGHT.TTF';
  static const String fontsDUBAIMEDIUM = 'assets/fonts/DUBAI-MEDIUM.TTF';
  static const String fontsDUBAIREGULAR = 'assets/fonts/DUBAI-REGULAR.TTF';
  static const String imagesAvatoop3 = 'assets/images/avatoop 3.jpg';
  static const String imagesAvatoop1 = 'assets/images/avatoop1.jpg';
  static const String imagesAvatoop2 = 'assets/images/avatoop2.jpg';
  static const String imagesAvatoop4 = 'assets/images/avatoop4.jpg';
  static const String imagesAvatoop5 = 'assets/images/avatoop5.jpg';
  static const String imagesImg = 'assets/images/img.png';
  static const String imagesImg1 = 'assets/images/img_1.png';
  static const String imagesImg2 = 'assets/images/img_2.png';
  static const String imagesImg3 = 'assets/images/img_3.png';
  static const String imagesImg4 = 'assets/images/img_4.png';
  static const String imagesImg5 = 'assets/images/img_5.png';
  static const String imagesProfile = 'assets/images/profile.png';
  static const String imagesUntitled = 'assets/images/Untitled.jpg';
}

///////////////////////////////
/// play bottom

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
      child: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _controller,
      ),
    ));
  }
}
