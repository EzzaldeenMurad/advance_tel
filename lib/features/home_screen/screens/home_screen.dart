
import '../../../core/constans/style.dart';
import '../../../core/utiles/size_config.dart';
import '../widgets/card_personal_info.dart';
import '/core/utiles/app__colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../widgets/card_info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          // centerTitle: true,
          title: const Text(
            " ادفانس تيليكوم",
            style: TextStyle(
              fontFamily: "Poppins",
              // color: AppColors.kPrimaryColor,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                    color: AppColors.kPrimaryColor),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -90.0, 0.0),
                child: Column(
                  children: [
                     CardPersonAccount(),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' الخدمات',
                            style: ApptextStyle.myCardTitle,
                            // style: subHeader,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              card_info_account(
                                  "كبينه السداد",
                                  "نوع الخدمه",
                                  Icons.phone_iphone_outlined,
                                  AppColors.colorCardService1),
                              const SizedBox(
                                width: 20,
                              ),
                              card_info_account(
                                  "كبينه السداد",
                                  "نوع الخدمه",
                                  Icons.phone_iphone_outlined,
                                  AppColors.colorCardService1),
                              const SizedBox(
                                width: 14,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
    // });

//
//
  }
}
