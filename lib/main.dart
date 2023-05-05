// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:property_trade_app/Constant/constant.dart';
import 'Screens/Login Screens/firstscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstScreen(),
        );
      },
    );
  }
}
