import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/profileButton.dart';
import 'package:movie_app/screens/searchPage.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, size: 32),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                    color: Colors.black,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          size: 32,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchPage()));
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
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
