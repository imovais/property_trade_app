// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/constant.dart';

Widget firstscreenbutton({required String iconpath, String? btnText}) {
  return Container(
    padding: EdgeInsets.all(10.w),
    width: 250.w,
    height: 50.w,
    decoration: BoxDecoration(color: secondaryColor()),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(height: 30.w, iconpath),
        SizedBox(
          width: 10.w,
        ),
        Text(
          btnText!,
          style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
