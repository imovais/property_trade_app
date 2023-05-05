import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constant/constant.dart';

Widget listTile(
    {String imagepath = '',
    required String title,
    required subtitle,
    bool isNetworkImg = false}) {
  return Card(
    elevation: 5,
    child: Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          isNetworkImg == true
              ? Image.network(
                  height: 80.w, width: 80.w, fit: BoxFit.fill, imagepath)
              : Image.asset(
                  height: 80.w,
                  width: 80.w,
                  fit: BoxFit.fill,
                  'assets/images/house_image.jpg'),
          Padding(
            //padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 22.h),
            padding: EdgeInsets.only(left: 13.w, top: 22.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: primaryColor()),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: primaryColor()),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    iconFeatureBox(
                        iconz: Icons.bed, textz: '4 Beds', isSmall: true),
                    iconFeatureBox(
                        iconz: Icons.bathroom_rounded,
                        textz: '4 Bath',
                        isSmall: true),
                    iconFeatureBox(
                        iconz: Icons.car_crash,
                        textz: '1 Garage',
                        isSmall: true),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
