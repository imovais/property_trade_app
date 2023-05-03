// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class MyFeatureBox extends StatelessWidget {
  const MyFeatureBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: double.infinity,
          height: 350,
          color: primaryColor(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  'assets/images/house_image.jpg'),

              SizedBox(height: 10), //sizebox

              //TITLE OF FEATURE BOX
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CRAFTSMAN HOUSE',
                      style: myFontStyle(
                          colorz: secondaryColor(),
                          fontsizez: 18,
                          fontweightz: FontWeight.bold),
                    ),
                    Text('430 N Btoudry Ave Los Angeles',
                        style: myFontStyle(
                            colorz: secondaryColor(),
                            fontsizez: 14,
                            fontweightz: FontWeight.w500)),

                    //ICONS OF FEATURE BOX
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
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
    );
  }
}
