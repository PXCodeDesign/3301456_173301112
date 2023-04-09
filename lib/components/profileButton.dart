import 'package:flutter/material.dart';
import 'package:movie_app/screens/profilePage.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 32,
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/person.jpg",
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      },
    );
  }
}
