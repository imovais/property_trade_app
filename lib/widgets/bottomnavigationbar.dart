import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_trade_app/Constant/constant.dart';

class BNavBar extends StatefulWidget {
  const BNavBar({super.key});

  @override
  State<BNavBar> createState() => _BNavBarState();
}

class _BNavBarState extends State<BNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0.w,
      backgroundColor: primaryColor(),
      unselectedItemColor: secondaryColor(),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.yellow,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'BookMark'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ],
    );
  }
}
