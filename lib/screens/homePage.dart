import 'package:flutter/material.dart';
import 'package:movie_app/components/homeAppBar.dart';
import 'package:movie_app/components/bottomBar.dart';
import 'package:movie_app/components/preview.dart';
import 'package:movie_app/components/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: HomeAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Preview(),
          Trending(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
