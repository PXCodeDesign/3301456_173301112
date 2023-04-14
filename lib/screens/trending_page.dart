import 'package:flutter/material.dart';
import 'package:movie_app/components/appbars.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/detail_page.dart';
import 'package:movie_app/screens/video_player_page.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

List<Model> model = trending.map((mb) => Model.fromJson(mb)).toList();

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBars(),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: model.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 240,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            model[index].image!,
                            height: 260,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white),
                              color: Colors.black54,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 32,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoPlayerPage(
                                            videoId: model[index].videoId!)));
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model[index].name!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                            model: model[index],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: const Icon(
                                        Icons.info,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        model[index].isNotificationEnabled =
                                            !model[index].isNotificationEnabled;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: model[index].isNotificationEnabled
                                          ? const Icon(
                                              Icons.check,
                                              size: 20,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.notifications,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
