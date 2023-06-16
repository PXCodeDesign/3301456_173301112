import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/profile_button.dart';
import 'package:movie_app/screens/modal_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(0, 233, 233, 233),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, size: 32),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return const ModalPage();
                },
              );
            },
          ),
          SvgPicture.asset(
            'assets/aa.svg',
            fit: BoxFit.cover,
            height: 40,
          ),
          const ProfileButton()
        ],
      ),
    );
  }
}
