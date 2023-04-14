import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/components/profile_button.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/movie.svg',
            fit: BoxFit.cover,
            height: 32,
          ),
          const ProfileButton()
        ],
      ),
    );
  }
}
