// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Screens/detail.dart';

import '../Constant/constant.dart';

class MyFeatureBox extends StatelessWidget {
  String imgpath;
  bool isNetworkImag = false;

  MyFeatureBox({super.key, this.imgpath = '', required this.isNetworkImag});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
            width: 305.w,
            height: 312.h,
            color: primaryColor(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isNetworkImag == true
                    ? Image.network(
                        width: 305.w,
                        height: 212.h,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                        imgpath)
                    : Image.asset(
                        width: 305.w,
                        height: 212.h,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                        'assets/images/house_image.jpg'),

                SizedBox(height: 10.h), //sizebox

                //TITLE OF FEATURE BOX
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CRAFTSMAN HOUSE',
                        style: myFontStyle(
                            colorz: secondaryColor(),
                            fontsizez: 16.sp,
                            fontweightz: FontWeight.bold),
                      ),
                      Text('430 N Btoudry Ave Los Angeles',
                          style: myFontStyle(
                              colorz: secondaryColor(),
                              fontsizez: 13.sp,
                              fontweightz: FontWeight.w500)),

                      //ICONS OF FEATURE BOX
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              iconFeatureBox(iconz: Icons.bed, textz: '4 Bed'),
                              iconFeatureBox(
                                  iconz: Icons.bathroom, textz: '4 Baths'),
                              iconFeatureBox(
                                  iconz: Icons.car_crash_rounded,
                                  textz: '1 Garage'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
