// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';
import 'package:property_trade_app/Screens/Login%20Screens/loginscreen.dart';
import 'package:property_trade_app/Screens/Login%20Screens/signup.dart';
import 'package:property_trade_app/Screens/homepage.dart';

import '../../widgets/button01.dart';
import '../../widgets/firstscreenbutton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 376.w,
        height: 806.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              Image.asset(
                  width: 300.w, height: 200.w, 'assets/images/img2.jpg'),
              SizedBox(
                height: 30.h,
              ),
              Text("Let's you in",
                  style: myFontStyle(colorz: primaryColor(), fontsizez: 50.sp)),
              SizedBox(
                height: 10.h,
              ),
              firstscreenbutton(
                  iconpath: 'assets/icons/fb.png',
                  btnText: 'Continue with Facebook'),
              SizedBox(
                height: 10.h,
              ),
              firstscreenbutton(
                  iconpath: 'assets/icons/google.png',
                  btnText: 'Continue with Google'),
              SizedBox(
                height: 10.h,
              ),
              firstscreenbutton(
                  iconpath: 'assets/icons/apple.png',
                  btnText: 'Continue with Apple'),
              SizedBox(
                height: 10.h,
              ),
              Text('Or'),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Button01(
                  bgColor: primaryColor(),
                  primaryColor: secondaryColor(),
                  textBtn: "Sign in with Password",
                  heightBtn: 60.h,
                  widthBtn: 300.w,
                  isSquare: false,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(fontSize: 16.sp, color: primaryColor()),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
