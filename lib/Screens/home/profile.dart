import 'package:FastOrder/Screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:FastOrder/component/bottom_nav.dart';

import 'dart:convert';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
          backgroundColor: Color(0xff2626fa),
          title: Center(
            child: Text(
              'Ali ATEŞ',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/clear.svg',
                    color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                })
          ]),
    );
  }
}
