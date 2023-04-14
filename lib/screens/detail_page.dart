import 'package:flutter/material.dart';
import 'package:movie_app/components/back_appbar.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/video_player_page.dart';

class DetailPage extends StatelessWidget {
  final Model model;
  const DetailPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: BackAppBar(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 600,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          model.image!,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    width: double.infinity,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(model.name!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(model.year!,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(model.season!,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(model.category!,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Container(
                          height: 44,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 32,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoPlayerPage(
                                            videoId: model.videoId!)));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        bottomNavigationBar: const BottomBar());
  }
}
