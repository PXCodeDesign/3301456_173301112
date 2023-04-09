import 'package:flutter/material.dart';
import 'package:movie_app/screens/downloadPage.dart';
import 'package:movie_app/screens/homePage.dart';
import 'package:movie_app/screens/notificationsPage.dart';
import 'package:movie_app/screens/searchPage.dart';
import 'package:movie_app/screens/trendingPage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home,
              size: 32,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.play_circle_fill,
              size: 32,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TrendingPage()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 32,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.downloading_sharp,
              size: 32,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DownloadPage()));
            },
          ),
        ],
      ),
    );
  }
}
