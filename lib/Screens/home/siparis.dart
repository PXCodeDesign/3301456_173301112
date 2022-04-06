import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:FastOrder/component/app_bar.dart';
import 'package:FastOrder/component/bottom_nav.dart';

import 'dart:convert';

class Order extends StatelessWidget {
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
          title: 'Siparişlerim',
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
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(
                    left: 20.0,
                    top: 20.0,
                    right: 20.0,
                  ),
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/3.png"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salata',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  "\$3.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff2661fa),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 40.0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 18.0,
                                    padding: const EdgeInsets.all(2.0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
