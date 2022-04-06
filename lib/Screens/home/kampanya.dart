import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:FastOrder/component/app_bar.dart';
import 'package:FastOrder/component/bottom_nav.dart';
import 'dart:convert';

class Gift extends StatelessWidget {
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
          title: 'Kampanyalar',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/dots.svg'),
                onPressed: () {})
          ]),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 130.0),
                  elevation: 10,
                  shadowColor: Colors.blue[500],
                  color: Colors.blue[200],
                  child: SizedBox(
                    width: 320,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/5.png',
                          ),
                          SizedBox(
                            height: 30,
                          ), //SizedBox
                          Text(
                            'SPECIAL OFFER',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 20,
                          ), //SizedBox
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor...',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 130.0),
                  elevation: 10,
                  shadowColor: Colors.blue[500],
                  color: Colors.blue[200],
                  child: SizedBox(
                    width: 320,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/6.png'),
                          SizedBox(
                            height: 30,
                          ), //SizedBox
                          Text(
                            'SUPER SALE %80',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 20,
                          ), //SizedBox
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 130.0),
                  elevation: 10,
                  shadowColor: Colors.blue[500],
                  color: Colors.blue[200],
                  child: SizedBox(
                    width: 320,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/9.png'),
                          SizedBox(
                            height: 30,
                          ), //SizedBox
                          Text(
                            'TODAY BEST OFFER',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 20,
                          ), //SizedBox
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 130.0),
                  elevation: 10,
                  shadowColor: Colors.blue[500],
                  color: Colors.blue[200],
                  child: SizedBox(
                    width: 320,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/8.png'),
                          SizedBox(
                            height: 30,
                          ), //SizedBox
                          Text(
                            'MEGA OFFER',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 20,
                          ), //SizedBox
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                //Card
                //Card
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
    );
  }
}
