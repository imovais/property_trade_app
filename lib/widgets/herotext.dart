import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/constant.dart';

class MyHeroText extends StatelessWidget {
  const MyHeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        width: 200,
        height: 70,
        child: Text(
          'Discover Best Suitable Property',
          style: myFontStyle(
              fontsizez: 24.sp,
              fontweightz: FontWeight.bold,
              colorz: primaryColor()),
        ));
  }
}
