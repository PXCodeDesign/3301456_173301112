import 'package:flutter/material.dart';
import 'package:movie_app/components/appBars.dart';
import 'package:movie_app/components/bottomBar.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBars(),
        ),
        bottomNavigationBar: BottomBar());
  }
}
