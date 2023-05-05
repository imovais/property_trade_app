// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget galleryimage(
    {required String imgUrl, bool isLast = false, String count = '1'}) {
  return isLast == false
          ? Image.network(height: 65.w, width: 65.w, fit: BoxFit.cover, imgUrl)
          : Stack(
              children: [
                Positioned(
                    child: Image.network(
                        //color: Colors.black.,
                        colorBlendMode: BlendMode.hardLight,
                        height: 65.w,
                        width: 65.w,
                        fit: BoxFit.cover,
                        imgUrl)),
                Positioned(
                    top: 20.h,
                    right: 20.w,
                    child: Text(
                      count,
                      style: TextStyle(fontSize: 30.sp, color: Colors.white),
                    )),
              ],
            )

      // Container(
      //     width: 65.w,
      //     height: 65.w,
      //     decoration: BoxDecoration(
      //         image: DecorationImage(image: NetworkImage(

      //           imgUrl))),
      //     child: Text(count))
      ;
}
