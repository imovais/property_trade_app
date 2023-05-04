// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Detail',
                    style:
                        myFontStyle(colorz: primaryColor(), fontsizez: 24.sp),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: SizedBox(
                    height: 300.h,
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/house_image.jpg'),
                  )),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'CRAFTSMAN HOUSE',
                style: myFontStyle(colorz: primaryColor(), fontsizez: 16.sp),
              ),
              Text(
                '430 N Btoudry Ave Los Angeles',
                style: myFontStyle(
                    colorz: primaryColor(),
                    fontsizez: 13.sp,
                    fontweightz: FontWeight.normal),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 30.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: primaryColor(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconFeatureBox(iconz: Icons.bed, textz: '3 Bed'),
                    iconFeatureBox(iconz: Icons.bathroom, textz: '3 Bath'),
                    iconFeatureBox(iconz: Icons.car_crash, textz: '1 Garage'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage('assets/images/dp.jpg'),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muhammad Ovais Khan',
                          style: myFontStyle(
                              colorz: primaryColor(),
                              fontsizez: 14.sp,
                              fontweightz: FontWeight.w700),
                        ),
                        Text('Flutter Developer',
                            style: myFontStyle(
                                colorz: Colors.grey.shade400,
                                fontsizez: 10.sp,
                                fontweightz: FontWeight.w700))
                      ],
                    ),
                  ],
                ),

                //BUTTON
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: primaryColor(),
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: secondaryColor()),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Call',
                          style: TextStyle(
                              color: secondaryColor(),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ), // END BUTTON
              ]),

              SizedBox(
                height: 15,
              ),

              //RICH TEXT
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: primaryColor()),
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut ipsum posuere magna consectetur ultrices. ')),

              SizedBox(
                height: 20,
              ),

              Text(
                'Gallery',
                style: myFontStyle(colorz: primaryColor(), fontsizez: 20),
              ),

              Row(
                children: [
                  Image.network(
                      height: 65.w,
                      width: 65.w,
                      fit: BoxFit.cover,
                      'https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
