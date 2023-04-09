import 'package:flutter/material.dart';
import 'package:movie_app/components/backAppBar.dart';
import 'package:movie_app/components/bottomBar.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/videoPlayerPage.dart';

class DetailPage extends StatelessWidget {
  final Model model;
  const DetailPage({required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: BackAppBar(),
        ),
        body: Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: Row(
              children: [
                SizedBox(
                  height: 200,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      child: Image.asset(
                        model.image!,
                        width: 140,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: double.infinity,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.name!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      Text(model.year!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Text(model.season!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Text(model.category!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 32,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoPlayerPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
        bottomNavigationBar: const BottomBar());
  }
}
