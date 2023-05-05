// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

import '../../widgets/button01.dart';
import '../../widgets/text_field.dart';
import '../homepage.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 376.w,
        height: 806.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Text(
                          style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 16,
                              color: primaryColor()),
                          textAlign: TextAlign.right,
                          'Skip',
                        )),
                  ),
                  CircleAvatar(
                    radius: 80.r,
                    backgroundImage: AssetImage('assets/images/dp.jpg'),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  text_field(hint_text: "first Name"),
                  SizedBox(
                    height: 15.h,
                  ),
                  text_field(
                    hint_text: 'Last Name',
                    // obs_text: false,
                    // suffix_icon: Icon(Icons.remove_red_eye_outlined)
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  text_field(hint_text: "Email"),
                  SizedBox(
                    height: 15.h,
                  ),
                  text_field(hint_text: "Date of Birth"),
                  SizedBox(
                    height: 15.h,
                  ),
                  text_field(hint_text: "Gender"),
                  SizedBox(
                    height: 40.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Button01(
                      bgColor: primaryColor(),
                      primaryColor: secondaryColor(),
                      textBtn: "Continue",
                      heightBtn: 50.h,
                      widthBtn: 300.w,
                      isSquare: false,
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 100.h,
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
