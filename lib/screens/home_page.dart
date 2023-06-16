import 'package:flutter/material.dart';
import 'package:movie_app/components/home_appbar.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/components/my_list.dart';
import 'package:movie_app/components/preview.dart';
import 'package:movie_app/components/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: HomeAppBar(),
      ),
      body: ListView(
        children: const [Preview(), Trending(), MyList()],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
