import 'package:flutter/material.dart';
import 'package:untitled16/controller/httpservice.dart';
import 'package:untitled16/mobile_body.dart';
import 'package:untitled16/model/avatoop_fack_data.dart';
import '../../model/data.dart';

class HotNewsPage extends StatefulWidget {
  const HotNewsPage({super.key});

  @override
  State<HotNewsPage> createState() => _HotNewsPageState();
}

class _HotNewsPageState extends State<HotNewsPage> {
  List<Post>? posts;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    // fetch data from api
    getData();
  }

  getData() async {
    posts = await RemoteServices().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person_rounded),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MobileBody()));
            },
            icon: const Icon(Icons.home_rounded)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        )
      ], leading: const Center(child: Text('Avatoop'))),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: posts?.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                posts![index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                posts![index].body,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.share, size: 20),
                                  SizedBox(width: 100),
                                  Icon(Icons.remove_red_eye_rounded, size: 20),
                                  Icon(Icons.comment_bank_outlined, size: 20),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              image: DecorationImage(
                                  image: NetworkImage(hotNews[index].images)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
