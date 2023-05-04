// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:google_fonts/google_fonts.dart';

Color primaryColor() {
  return const Color(0xff0F2F44);
}

Color secondaryColor() {
  return const Color(0xffEAF1FF);
}

TextStyle myFontStyle(
    {double fontsizez = 16.0,
    var fontweightz = FontWeight.w600,
    required colorz}) {
  return TextStyle(
      color: colorz,
      fontFamily: 'Mulish',
      fontSize: fontsizez,
      fontWeight: fontweightz);
}

Widget iconFeatureBox({
  required IconData iconz,
  required String textz,
  bool isSmall = false,
  Color textcolorz = Colors.black,
}) {
  double paddingz;
  double ftsize;
  Color iconcoloring;
  Color? textcolorz;
  if (isSmall == false) {
    paddingz = 9.w;
    ftsize = 12.sp;
    iconcoloring = Colors.yellow;
    textcolorz = Color(0xffEAF1FF);
  } else {
    paddingz = 4.w;
    ftsize = 8.sp;
    iconcoloring = primaryColor();
  }
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Icon(size: 18.w, iconz, color: iconcoloring),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingz),
          child: Text(
            textz,
            style: TextStyle(
                fontSize: ftsize,
                fontWeight: FontWeight.w400,
                color: textcolorz),
          ),
        )
      ],
    ),
  );
}
