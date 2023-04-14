import 'package:flutter/material.dart';
import 'package:movie_app/screens/download_page.dart';
import 'package:movie_app/screens/home_page.dart';
import 'package:movie_app/screens/notifications_page.dart';
import 'package:movie_app/screens/profile_page.dart';
import 'package:movie_app/screens/search_page.dart';
import 'package:movie_app/screens/trending_page.dart';

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
        '/search': (context) => const SearchPage(),
        '/trending': (context) => const TrendingPage(),
        '/notifications': (context) => const NotificationsPage(),
        '/download': (context) => const DownloadPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
