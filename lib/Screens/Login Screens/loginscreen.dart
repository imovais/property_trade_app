// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

import '../../widgets/button01.dart';
import '../../widgets/firstscreenbutton.dart';
import '../../widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 376.w,
        height: 806.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60.h),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      width: 200.w, height: 200.w, 'assets/images/img1.jpg'),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Login to your Account",
                    textAlign: TextAlign.center,
                    style:
                        myFontStyle(colorz: primaryColor(), fontsizez: 30.sp),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  text_field(hint_text: "email"),
                  SizedBox(
                    height: 10.h,
                  ),
                  text_field(
                      hint_text: 'password',
                      obs_text: true,
                      suffix_icon: Icon(Icons.remove_red_eye_outlined)),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text('Remember Me'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Button01(
                    bgColor: primaryColor(),
                    primaryColor: secondaryColor(),
                    textBtn: "Sign in with Password",
                    heightBtn: 50.h,
                    widthBtn: 300.w,
                    isSquare: false,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Forgot the password?')),
                  Text(
                    'or continue with',
                    style: myFontStyle(
                        colorz: Colors.grey,
                        fontsizez: 18.sp,
                        fontweightz: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(width: 40.sp, 'assets/icons/google.png'),
                        Image.asset(width: 40.sp, 'assets/icons/fb.png'),
                        Image.asset(width: 40.sp, 'assets/icons/apple.png'),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
