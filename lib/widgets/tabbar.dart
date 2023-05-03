// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class MyCustomTabBar extends StatelessWidget {
  const MyCustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      color: secondaryColor(),

      //color: Colors.red,
      child: TabBar(
          labelColor: secondaryColor(),
          unselectedLabelColor: primaryColor(),
          isScrollable: true,
          //unselectedLabelStyle: TextStyle(color: secondaryColor()),
          labelPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          labelStyle: TextStyle(
              fontFamily: 'Mulish', fontSize: 18, fontWeight: FontWeight.bold),
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: primaryColor()),
          tabs: [
            Tab(child: Text('House')),
            Tab(child: Text('Apartement')),
            Tab(child: Text('Apartement')),
            Tab(child: Text('Apartement')),
            Tab(
              child: Text('Flot'),
            )
          ]),
    );
  }
}
