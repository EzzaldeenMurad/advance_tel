
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../Login_end/screen/welcome_screen.dart';
import 'custom_butuums.dart';
import 'custom_pige_view.dart';
import 'custom_indicator.dart';

class OnBoarding_Body extends StatefulWidget {
  const OnBoarding_Body({super.key   });

  @override
  State<OnBoarding_Body> createState() => _OnBoarding_BodyState();
}

class _OnBoarding_BodyState extends State<OnBoarding_Body> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 12,
          child: CustomDotsIndicator(
            dotIndex:
                pageController.hasClients ? pageController.page!.toInt() : 0,
          ),
        ),
        Visibility(
          visible: pageController.hasClients
              ? (pageController.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 8,
            right: SizeConfig.defaultSize! * 5,
            child: InkWell(
              child: const Text(
                '  Skip',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              onTap:  () {
                Get.toNamed('/welcome');
              }

            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 4.5,
          child: CustomContinerButtome(
            onTap: () {
              if (pageController.page! < 2) {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Get.to(() => const WelcomeScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500));
              }
            },
            text: pageController.hasClients
                ? (pageController.page == 2 ? "التالي" : "التالي")
                : 'التالي',
          ),
        ),
      ],
    );
  }
  
//   void goToNextView() {
//     // Go to the next screen
//     Get.offNamed('/welcome');
//   }
}
