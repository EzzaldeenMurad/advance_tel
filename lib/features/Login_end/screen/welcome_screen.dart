import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/assets_manager.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(color: AppColors.kPrimaryColor),
                //  height:SizeConfig.screenHeight!* 1,
                width: double.infinity,
                child: Column(children: [
                  SizedBox(
                    height: SizeConfig.defaultSize! * 10,
                  ),
                  CircleAvatar(
                    backgroundImage: const AssetImage(ImgAssets.logo_image),
                    backgroundColor: AppColors.colorCardService1,
                    radius: 90,
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize! * 8,
                  ),
                  const Text(
                    ' مرحبا بك',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize! * 6,
                  ),
                  GestureDetector(
                    onTap: () {
                        Get.toNamed('/login');
                       
                    },
                    child: Container(
                      height: SizeConfig.defaultSize! * 6,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          ' تسجيل الدخول',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                          Get.toNamed('/createAccount');
                    },
                    child: Container(
                      height: SizeConfig.defaultSize! * 6,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          ' انشاء حساب',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.2,
                  ),
                ]))));
  }
  
  void goToNextView() {
    // Go to the next screen
    Get.offNamed('/login');
  }
}
