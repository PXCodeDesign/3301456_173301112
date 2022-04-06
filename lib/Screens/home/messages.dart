import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:FastOrder/component/app_bar.dart';
import 'package:FastOrder/component/bottom_nav.dart';

import 'dart:convert';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          leading: Transform.translate(
              offset: Offset(10, 0),
              child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/back.svg',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
          title: 'Canlı Destek',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/dots.svg'),
                onPressed: () {})
          ]),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
