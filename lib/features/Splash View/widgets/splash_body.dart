
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../app.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/assets_manager.dart';
import '../../../core/utiles/size_config.dart';
import '../../onboarding/screen/bording_screen.dart';

// class Splashbody extends StatefulWidget {
//   @override
//   _SplashVieweState createState() => _SplashVieweState();
// }

// class _SplashVieweState extends State<Splashbody>
//     with SingleTickerProviderStateMixin {
//   AnimationController? animationController;
//   Animation<double>? fading;

//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1000));
//     fading = Tween<double>(begin: .2, end: 1).animate(animationController!);

//     animationController?.repeat(reverse: true);

//     goToNextView();
//   }

//   @override
//   void dispose() {
//     animationController?.dispose();
//     super.dispose();
//   }

//   Future<void> goToNextView() async {
//     await Future.delayed(Duration(seconds: 5));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: double.infinity,
//         color: AppColors.kPrimaryColor,
//         child: Column(children: [
//           SizedBox(
//             height: SizeConfig.defaultSize! * 10,
//           ),
//           FadeTransition(
//             opacity: fading!,
//             child: Text(
//               ' مرحبا بك',
//               style: TextStyle(
//                   fontSize: 51,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xffffffff)),
//             ),
//           ),
//           SizedBox(
//             height: SizeConfig.defaultSize! * 3.5,
//           ),
//           Container(child: Image.asset(ImgAssets.adv_image))
//         ]));
//   }
// }
// ///////////////////////////////////////////////

// class SplashViewe extends StatefulWidget {
//   @override
//   _SplashViewState1 createState() => _SplashViewState1();
// }

// class _SplashViewState1 extends State<SplashViewe> {
//   @override
//   void initState() {
//     super.initState();
//     initializeApp();
//   }

//   Future<void> initializeApp() async {
//     // Simulate some initialization process
//     await Future.delayed(Duration(seconds: 2));

//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//     DateTime? lastActiveTime = prefs.getString('lastActiveTime') != null
//         ? DateTime.parse(prefs.getString('lastActiveTime')!)
//         : null;

//     if (isLoggedIn) {
//       if (lastActiveTime != null &&
//           DateTime.now().difference(lastActiveTime).inMinutes <= 5) {
//         Get.offAll(() => MyHomePage());
//       }
//        else {
//         Get.offAll(() => loginScreen());
//       }
//     } else {
//       Get.offAll(() => OnBoardingView());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SplashView1()

//     );
//   }
// }


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fading;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 10000));
    fading = Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    initializeApp();
    // goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Future<void> goToNextView() async {
    await Future.delayed(const Duration(seconds: 3)); // تأخير لمدة 2 ثانية
  }

  Future<void> initializeApp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      prefs.setBool('isFirstTime', false);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const OnBoardingView()),
          (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MyHomePage()),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.kPrimaryColor,
        child: Column(children: [
          SizedBox(
            height: SizeConfig.defaultSize ?? 0 * 10,
          ),
          FadeTransition(
            opacity: fading ?? const AlwaysStoppedAnimation(0.0),
            child: const Text(
              ' مرحبا بك',
              style: TextStyle(
                  fontSize: 51,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff)),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize ?? 0 * 3.5,
          ),
          Container(child: Image.asset(ImgAssets.adv_image))
        ]),
      ),
    );
  }
}