import '../core/utiles/app__colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'core/utiles/Bindings.dart';
import 'core/widgets/dailog/custom_dailog_result.dart';
import 'features/Login_end/screen/login_screen.dart';
import 'features/Login_end/screen/welcome_screen.dart';
import 'features/Splash View/widgets/splash_body.dart';
import 'features/authentecation/controllers/auth.dart';
import 'features/home_screen/screens/menue_screen.dart';
import 'features/home_screen/widgets/navgatin.dart';
import 'features/onboarding/screen/bording_screen.dart';

class FawryCash extends StatelessWidget {
  // final bool isFirstLaunch;

  const FawryCash({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashView()),
        GetPage(name: '/onboarding', page: () => const OnBoardingView()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        // GetPage(name: '/', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => const MyHomePage()),
      ],
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const SplashView());
        }
        return null;
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Auth auth = Get.find();
  Widget page = const BaseScreen();
  @override
  Widget build(BuildContext context) {
    // return
    //  Obx(() {
    //   if (auth.authenticated.value) {
        return ZoomDrawer(
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          openCurve: Curves.fastOutSlowIn,
          closeCurve: Curves.easeInBack,
          angle: -19.0,
          menuScreen: MenuScreen(
            onchanged: (a) {
              // Navigator.pop(context); // إخفاء ZoomDrawer
              setState(
                () {
                  page = a;

                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page));
                  // OnTap:
                  () => ZoomDrawer.of(context)!.close();
                },
              );
            },
          ),
          mainScreen: page,
          borderRadius: 24.0,
          showShadow: true,
          drawerShadowsBackgroundColor: Colors.grey.shade300,
          menuBackgroundColor: AppColors.kPrimaryColor,
        );
      // } 
      // else {
      //   return const BaseScreen ();
      // }
    // });
  }
}
