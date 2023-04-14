import 'package:flutter/material.dart';
import 'package:movie_app/components/back_appbar.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/detail_page.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Model> movies =
        trending.map((mb) => Model.fromJson(mb)).toList();
    final List<Model> myMovies =
        movies.where((movie) => movie.mylist == true).toList();

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: BackAppBar(),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: myMovies.length,
        itemBuilder: (BuildContext context, int index) {
          final Model movie = myMovies[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(model: movie),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  movie.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
