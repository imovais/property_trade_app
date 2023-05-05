// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

import '../widgets/galary_images_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SingleChildScrollView(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CRAFTSMAN HOUSE',
                          style: myFontStyle(
                              colorz: primaryColor(), fontsizez: 16.sp),
                        ),
                        Text(
                          '430 N Btoudry Ave Los Angeles',
                          style: myFontStyle(
                              colorz: primaryColor(),
                              fontsizez: 13.sp,
                              fontweightz: FontWeight.normal),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: secondaryColor(),
                      ),
                      child: IconButton(
                          color: primaryColor(),
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border)),
                    )
                  ],
                ),

                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 30.h,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
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
                  height: 20.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: primaryColor(),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Row(
                          children: [
                            Icon(Icons.call,
                                color: secondaryColor(), size: 18.sp),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Call',
                                style: TextStyle(
                                    color: secondaryColor(),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
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

                SizedBox(
                  height: 10.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    galleryimage(
                        imgUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhVgEu9P0-me3hvC8fS2GV549ySYvnnWnZ_g&usqp=CAU'),
                    SizedBox(
                      width: 5.w,
                    ),
                    galleryimage(
                        imgUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhVgEu9P0-me3hvC8fS2GV549ySYvnnWnZ_g&usqp=CAU'),
                    SizedBox(
                      width: 5.w,
                    ),
                    galleryimage(
                        imgUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhVgEu9P0-me3hvC8fS2GV549ySYvnnWnZ_g&usqp=CAU'),
                    SizedBox(
                      width: 5.w,
                    ),
                    galleryimage(
                        isLast: true,
                        count: '10',
                        imgUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhVgEu9P0-me3hvC8fS2GV549ySYvnnWnZ_g&usqp=CAU'),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Text(
                  'Price',
                  style: myFontStyle(
                      colorz: primaryColor(),
                      fontsizez: 20,
                      fontweightz: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$5990000',
                      style: myFontStyle(
                          colorz: primaryColor(),
                          fontsizez: 20,
                          fontweightz: FontWeight.bold),
                    ),

                    //BUTTON
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColor(),
                          borderRadius: BorderRadius.circular(8.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 10.w),
                      child: Text('BUY NOW',
                          style: TextStyle(
                              color: secondaryColor(),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
