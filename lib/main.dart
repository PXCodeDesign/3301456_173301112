import 'package:flutter/material.dart';
import 'package:movie_app/screens/detailPage.dart';
import 'package:movie_app/screens/downloadPage.dart';
import 'package:movie_app/screens/homePage.dart';
import 'package:movie_app/screens/notificationsPage.dart';
import 'package:movie_app/screens/profilePage.dart';
import 'package:movie_app/screens/searchPage.dart';
import 'package:movie_app/screens/trendingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "movie_app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0C0C0C),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => SearchPage(),
        '/trending': (context) => const TrendingPage(),
        '/notifications': (context) => const NotificationsPage(),
        '/download': (context) => const DownloadPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
