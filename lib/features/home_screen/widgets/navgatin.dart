import 'package:get/get.dart';

import '../../cabina/screen/pyment_cabin.dart';
import '../../chat/chate_screen.dart';
import '../../report/screen/report_home.dart';
import '/core/utiles/app__colors.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final int _pageIndex = 0;

  final items = [
    Icon(
      Icons.home,
      size: 30,
      color: AppColors.colorIconsNavagation,
    ),
    Icon(Icons.contact_page_sharp,
        size: 30, color: AppColors.colorIconsNavagation),
    Icon(Icons.phone_iphone, size: 30, color: AppColors.colorIconsNavagation),
    Icon(Icons.chat, size: 30, color: AppColors.colorIconsNavagation)
  ];
  int index = 0;

  final List<Widget> _pages = <Widget>[
     HomeScreen(),

    const ReportHome(),
    const PymentCabin(),
    const ChatScreen(),
    // HomeScreen(),
    // HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.white,
        color: AppColors.kPrimaryColor,
        items: items,
        // index: index,
        index: _pageIndex,

        onTap: (pageIndex) async {
          await Future.delayed(const Duration(milliseconds: 300));
          setState(() {
            // index = selctedIndex;
            index = pageIndex;
            switch (index) {
              case 0:
                break;
              case 1:
                Get.to(const ReportHome());
                break;
              case 2:
                Get.to(const PymentCabin());
                break;
              case 3:
                Get.to(const ChatScreen());
                break;
            }
          });
        },

        height: 70,
        // backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 500),
        // animationCurve: ,
      ),
    );
  }
}
