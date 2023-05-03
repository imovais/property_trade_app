// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:property_trade_app/widgets/featurebox.dart';
import 'package:property_trade_app/widgets/list_tile.dart';

import '../Constant/constant.dart';

class HouseTabBarView extends StatelessWidget {
  const HouseTabBarView({super.key});

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
          MyFeatureBox(),

          SizedBox(
            height: 20,
          ), //sizebox

          //ListView

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyListTile(),
              SizedBox(
                height: 10,
              ), //size box
              MyListTile(),
              SizedBox(
                height: 10,
              ), //size box
              MyListTile(),
            ],
          )
        ],
      ),
    );
  }
}
