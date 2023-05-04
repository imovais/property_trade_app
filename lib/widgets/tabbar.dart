// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          labelPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          labelStyle: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
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
