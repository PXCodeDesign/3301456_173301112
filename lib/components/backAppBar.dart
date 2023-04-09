import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/screens/profilePage.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, size: 32),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SvgPicture.asset(
            'assets/movie.svg',
            fit: BoxFit.cover,
            height: 32,
          ),
          const ProfilePage()
        ],
      ),
    );
  }
}
