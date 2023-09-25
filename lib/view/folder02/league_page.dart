import 'package:flutter/material.dart';
import '../folder01/stable_classes.dart';
import 'TableScreen.dart';

class LeaguePage extends StatefulWidget {
  static const String tag = 'LeaguePageRoute/';

  const LeaguePage({super.key});
  @override
  _LeaguePageState createState() => _LeaguePageState();
}

class _LeaguePageState extends State<LeaguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('competitions'),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xff5348e8),
              Color(0xffe70066),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.3),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Competitions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/premier_league.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'PL'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/laliga_league.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'PD'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/Bundesliga_league.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'BL1'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/seraie_a_league.jpg'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'SA'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/ligue_1.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'FL1'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/bartar_league.jpg'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'PPL'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(
                          image: 'assets/images/azadegan_league.jpg'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TableScreen(code: 'PPL'),
                            ));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
