import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      // ignore: prefer_const_constructors
      contentPadding: EdgeInsets.symmetric(vertical: 2),
      tileColor: secondaryColor(),
      leading: Image.asset(
          height: 150,
          width: 100,
          fit: BoxFit.cover,
          'assets/images/house_image.jpg'),
      title: Text(
        'RANCH HOME',
        style: myFontStyle(colorz: primaryColor(), fontsizez: 18),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '429 N Btourny Ave Los Angles',
            style: myFontStyle(
                colorz: primaryColor(),
                fontsizez: 14,
                fontweightz: FontWeight.normal),
          ),
          Row(
            children: [
              iconFeatureBox(iconz: Icons.bed, textz: '4 Bed', isSmall: true),
              iconFeatureBox(
                  iconz: Icons.bathroom, textz: '4 Baths', isSmall: true),
              iconFeatureBox(
                  iconz: Icons.car_crash_rounded,
                  textz: '1 Garage',
                  isSmall: true),
            ],
          )
        ],
      ),
    );
  }
}
