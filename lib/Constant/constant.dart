// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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

Widget iconFeatureBox(
    {required IconData iconz, required String textz, bool isSmall = false}) {
  double paddingz;
  double ftsize;
  Color iconcoloring;
  if (isSmall == false) {
    paddingz = 10;
    ftsize = 16;
    iconcoloring = Colors.yellow;
  } else {
    paddingz = 5;
    ftsize = 10;
    iconcoloring = primaryColor();
  }
  return Row(
    children: [
      Icon(iconz, color: iconcoloring),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingz),
        child: Text(
          textz,
          style:
              myFontStyle(colorz: Colors.blueGrey.shade200, fontsizez: ftsize),
        ),
      )
    ],
  );
}
