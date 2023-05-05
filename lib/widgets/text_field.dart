// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

Widget text_field({hint_text, obs_text = false, suffix_icon}) {
  return Container(
    height: 50.h,
    width: 300.w,
    child: TextField(
      obscureText: obs_text,
      decoration: InputDecoration(
          suffixIcon: suffix_icon,
          fillColor: secondaryColor(),
          filled: true,
          hintText: hint_text,
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(9)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor()),
              borderRadius: BorderRadius.circular(9))),
    ),
  );
}
