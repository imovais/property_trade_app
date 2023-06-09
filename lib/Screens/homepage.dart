// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Screens/TAB%20BAR%20SCREENS/housetabbarview.dart';

import '../Constant/constant.dart';
import '../widgets/bottomnavigationbar.dart';
import '../widgets/herotext.dart';
import '../widgets/tabbar.dart';
import 'TAB BAR SCREENS/apartmenttabbarview.dart';
import 'TAB BAR SCREENS/plottabbarview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BNavBar(),
          body: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                //Top Profile Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // TEXT
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location:',
                          style: myFontStyle(
                              fontsizez: 13.sp, colorz: Colors.black),
                        ),
                        Text(
                          'Los Angeles, CA',
                          style: myFontStyle(
                              fontsizez: 14.sp,
                              fontweightz: FontWeight.bold,
                              colorz: primaryColor()),
                        )
                      ],
                    ),
                    // CIRCLE DISPLAY PICTURE
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/dp.jpg'))
                          //color: Colors.amber,
                          ),
                      // child: Image.asset(
                      //     fit: BoxFit.cover,
                      //     'assets/images/profile_picture.jpg'),
                    ),
                  ],
                ),

                //HERO TEXT
                MyHeroText(),

                //Tab BAR
                MyCustomTabBar(),

                Expanded(
                    child: TabBarView(
                  children: [
                    HouseTabBarView(),
                    ApartmentTabBarView(),
                    PlotTabBarView(),
                    Center(
                      child: Text('contact'),
                    ),
                    Center(
                      child: Text('contact'),
                    ),
                  ],
                ))
              ], //main Column
            ),
          ),
        ),
      ),
    );
  }
}
