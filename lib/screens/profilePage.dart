import 'package:flutter/material.dart';
import 'package:movie_app/components/backAppBar.dart';

import 'package:movie_app/components/bottomBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: BackAppBar(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
