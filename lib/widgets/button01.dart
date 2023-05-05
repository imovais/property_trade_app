// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button01 extends StatelessWidget {
  final double? widthBtn;
  final Color bgColor;
  final Color primaryColor;
  final String textBtn;
  final bool isSquare;
  final double heightBtn;
  final IconData? iconBtn;
  final bool isIcon;

  const Button01(
      {super.key,
      this.widthBtn,
      required this.bgColor,
      required this.primaryColor,
      required this.textBtn,
      this.isSquare = true,
      required this.heightBtn,
      this.iconBtn,
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSquare == false ? widthBtn : heightBtn,
      height: heightBtn,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(heightBtn / 6),
          border: Border.all(color: primaryColor)),
      child: Center(
        child: isIcon == false
            ? Text(
                textBtn,
                style: TextStyle(color: primaryColor, fontSize: heightBtn / 3),
              )
            : Icon(
                color: primaryColor,
                size: heightBtn / 3,
                iconBtn,
              ),
      ),
    );
  }
}
