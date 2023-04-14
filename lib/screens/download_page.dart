import 'package:flutter/material.dart';
import 'package:movie_app/components/appbars.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/components/downloading_card.dart';
import 'package:movie_app/movie/movie.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  List<Model> model = trending.map((mb) => Model.fromJson(mb)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBars(),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return DownloadingCard(movie: model[index]);
              }),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
