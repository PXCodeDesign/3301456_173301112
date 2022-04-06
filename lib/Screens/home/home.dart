import 'package:FastOrder/Screens/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:FastOrder/component/app_bar.dart';
import 'package:FastOrder/component/bottom_nav.dart';

import 'dart:convert';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          leading: Transform.translate(
              offset: Offset(10, 0),
              child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/profil1.svg',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  })),
          title: 'FastOrder',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/notification.svg'),
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
            children: [
              Text(
                'Home',
                style: TextStyle(
                    color: Color(0xff2661fa),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Color(0xff2661fa))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Color(0xff2661fa))),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    prefixIcon: SvgPicture.asset('assets/icons/search.svg',
                        color: Color(0xff2661fa), fit: BoxFit.scaleDown),
                    hintText: 'Search...'),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    child: Container(
                      height: 35.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2661fa),
                      ),
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(
                                'assets/icons/filter.svg',
                                color: Colors.white,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 20),
              Text(
                'Popular',
                style: TextStyle(
                  color: Color(0xff2661fa),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
