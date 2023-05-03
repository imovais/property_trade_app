// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:property_trade_app/Constant/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail',
                style: myFontStyle(colorz: primaryColor(), fontsizez: 20),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/house_image.jpg'),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'CRAFTSMAN HOUSE',
                style: myFontStyle(colorz: primaryColor(), fontsizez: 18),
              ),
              Text(
                '430 N Btoudry Ave Los Angeles',
                style: myFontStyle(
                    colorz: primaryColor(),
                    fontsizez: 14,
                    fontweightz: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconFeatureBox(iconz: Icons.bed, textz: '3 Bed'),
                    iconFeatureBox(iconz: Icons.bathroom, textz: '3 Bath'),
                    iconFeatureBox(iconz: Icons.car_crash, textz: '1 Garage'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/profile_picture.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muhammad Ovais Khan',
                          style: myFontStyle(
                              colorz: primaryColor(), fontsizez: 12),
                        ),
                        Text('Flutter Developer')
                      ],
                    ),
                  ],
                ),

                //BUTTON
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: primaryColor(),
                      borderRadius: BorderRadius.circular(10)),
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
            ],
          ),
        ),
      ),
    );
  }
}
