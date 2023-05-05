// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/widgets/featurebox.dart';
import 'package:property_trade_app/widgets/list_tile.dart';

import '../../Constant/constant.dart';

class PlotTabBarView extends StatelessWidget {
  const PlotTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text
          Text('Best for you',
              style: myFontStyle(
                  fontsizez: 20,
                  fontweightz: FontWeight.w600,
                  colorz: primaryColor())),

          SizedBox(height: 10),

          //FEATURE BOX
          MyFeatureBox(
              imgpath:
                  'https://www.shutterstock.com/image-photo/residential-plot-boundarywall-land-plotting-260nw-1444720283.jpg',
              isNetworkImag: true),

          SizedBox(
            height: 20,
          ), //sizebox

          //ListView

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              listTile(
                  isNetworkImg: true,
                  imagepath:
                      'https://www.sastaghar.in/wp-content/uploads/2022/04/225081379_856215018364172_5405726485162548789_n-1-1-1-2-1-2-1-2-1-1-1-1-1-1-2-1-2-1-1-1-1-1-2-2-2-1-2-2-1-1-1-1-1-2-2-1-1-1-1-1-38-848x663.jpg',
                  title: 'PARKVIEW HOUSE',
                  subtitle: 'Near Naya Nazimabd, Karachi'),
              SizedBox(
                height: 10.h,
              ), //size box
              listTile(
                  isNetworkImg: true,
                  imagepath:
                      'https://images.indianexpress.com/2016/02/green-building759.jpg',
                  title: 'MashaAllah Banglow',
                  subtitle: '26 Street DHA Karachi'),
              SizedBox(
                height: 10.h,
              ), //size box
              listTile(
                  isNetworkImg: true,
                  imagepath:
                      'https://assets-news.housing.com/news/wp-content/uploads/2022/03/31010142/Luxury-house-design-Top-10-tips-to-add-luxury-to-your-house-FEATURE-compressed.jpg',
                  title: 'SOCIETY HOUSE',
                  subtitle: 'Bahria Town Karachi'),
            ],
          )
        ],
      ),
    );
  }
}
