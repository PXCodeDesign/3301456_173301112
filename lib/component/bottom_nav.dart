import 'package:FastOrder/Screens/home/kampanya.dart';
import 'package:FastOrder/Screens/home/home.dart';
import 'package:FastOrder/Screens/home/messages.dart';
import 'package:FastOrder/Screens/home/siparis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xff2661fa),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }),
          IconButton(
              icon: SvgPicture.asset('assets/icons/chat.svg',
                  color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              }),
          IconButton(
              icon:
                  SvgPicture.asset('assets/icons/buy.svg', color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              }),
          IconButton(
              icon: SvgPicture.asset('assets/icons/gift.svg',
                  color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gift()),
                );
              })
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.Icon, required this.icon})
      : super(key: key);

  final GestureTapCallback Icon;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Icon,
      child: SvgPicture.asset(icon),
    );
  }
}
