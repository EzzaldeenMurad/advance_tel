import '/features/cabina/widget/show_srvice_Bagview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../../core/utiles/app__colors.dart';

import '../controllers/phone_number_controller.dart';

import '../screen/bacatscrren.dart';
import 'categorypyment_fawry.dart';
import 'custom_tabBar.dart';
import 'custome_tabbar.dart';

AppColors colors = AppColors();
TabBarTransform ttf = TabBarTransform();

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var backGroundColor;
  final PhoneNumberController controllerNum = Get.put(PhoneNumberController());
  @override
  void initState() {
    tabController = TabController(
        length: controllerNum.numper.value == '70'
            ? 1
            : controllerNum.numper.value == '79'
                ? 1
                : controllerNum.numper.value == '04'
                    ? 2
                    : controllerNum.numper.value == '71'
                        ? 4
                        : controllerNum.numper.value == '77' ||
                                controllerNum.numper.value == '78'
                            ? 4
                            : 5,
        vsync: this,
        initialIndex: controllerNum.numper.value == '79'
            ? 0
            : controllerNum.numper.value == '70'
                ? 0
                : controllerNum.numper.value == '04'
                    ? 1
                    : controllerNum.numper.value == '71'
                        ? 3
                        : controllerNum.numper.value == '77' ||
                                controllerNum.numper.value == '78'
                            ? 3
                            : 4);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    //  controllerNum.priceController.value.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  controllerNum.priceController.value.clear();
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: SizeConfig.defaultSize! * 5,
            child: Container(
              width: SizeConfig.screenWidth!,
              decoration: BoxDecoration(
                color: AppColors.youBackGroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: controllerNum.checkNumber(
                widgetSbafone: customeTabBar(
                    text1: "جملة",
                    text2: 'باقات',
                    text3: "فوري",
                    text4: "رصيد",
                    tabController: tabController,
                    backGroundColor: AppColors.sabafonBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.sabafonBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.sabafonSelectedLabelColor,
                    unselectedLabelColor:
                        AppColors.sabafonUnselectedLabelColor),
                widgetYemenMobile: customeTabBar(
                    text1: "جملة",
                    text2: 'باقات',
                    text3: "فوري",
                    text4: "رصيد",
                    tabController: tabController,
                    backGroundColor: AppColors.yemenMobileBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.yemenMobileBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.yemenMobileSelectedLabelColor,
                    unselectedLabelColor:
                        AppColors.yemenMobileUnselectedLabelColor),
                widgetYemenNet: customeTabBar(
                    text1: "الهاتف الثابت",
                    text2: "الانترنت الارضي",
                    tabController: tabController,
                    backGroundColor: AppColors.yemenNetBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.yemenNetBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.yemenNetSelectedLabelColor,
                    unselectedLabelColor:
                        AppColors.yemenNetUnselectedLabelColor),
                widgetYou: customeTabBar(
                    text1: "فوترة",
                    text2: "جملة",
                    text3: 'باقات',
                    text4: "فوري",
                    text5: "رصيد",
                    tabController: tabController,
                    backGroundColor: AppColors.youBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.youBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.youSelectedLabelColor,
                    unselectedLabelColor: AppColors.youUnselectedLabelColor),
                widgetAdenNet: customeTabBar(
                    text1: "باقات",
                    tabController: tabController,
                    backGroundColor: AppColors.yemenNetBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.yemenNetBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.yemenNetSelectedLabelColor,
                    unselectedLabelColor:
                        AppColors.yemenNetUnselectedLabelColor),
                widgetWay: customeTabBar(
                    text1: "فوري",
                    tabController: tabController,
                    backGroundColor: AppColors.yemenNetBackGroundColor,
                    backGroundSelectedLabelColor:
                        AppColors.yemenNetBackGroundSelectedLabelColor,
                    selectedLabelColor: AppColors.yemenNetSelectedLabelColor,
                    unselectedLabelColor:
                        AppColors.yemenNetUnselectedLabelColor),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.05),
          controllerNum.checkNumber(
            widgetSbafone: Expanded(
              child: coustomeTabBarView(
                tabController: tabController,
                screen1: ttf.tabtransform(" ادخل الكميه", "الكميه", 'gomla'),
                screen2: const BacatScreen(),
                //  BacatScreen(),
                screen3: CategoriePaymentFawry(),
                // CategoriePaymentFawry(),
                screen4: ttf.tabtransform(
                    'ادخل عدد الوحدات', "عدد الوحدات", 'balance'),
                // Balance(),
              ),
            ),
            widgetWay: Expanded(
              child: coustomeTabBarView(
                tabController: tabController,
                screen1: CategoriePaymentFawry(),
              ),
            ),
            widgetAdenNet: Expanded(
              child: coustomeTabBarView(
                tabController: tabController,
                screen1: CategoriePaymentFawry(),
              ),
            ),
            widgetYemenMobile: Expanded(
              child: coustomeTabBarView(
                tabController: tabController,
                screen1: ttf.tabtransform("ادخل الكميه", "الكميه", 'gomla'),
                screen2: const BacatScreen(),
                screen3: CategoriePaymentFawry(),
                screen4: ttf.tabtransform("ادخل المبلغ", "المبلغ", 'balance'),
              ),
            ),
            widgetYemenNet: Expanded(
              child: coustomeTabBarView(
                tabController: tabController,
                screen1: ttf.tabtransform(" اضافه المبلغ", "المبلغ", 'line'),
                screen2: ttf.tabtransform(" اضافه المبلغ", "المبلغ", 'adsl'),
              ),
            ),
            widgetYou: Expanded(
              child: coustomeTabBarView(
                  tabController: tabController,
                  screen1:
                      ttf.tabtransform(" اضافه المبلغ", "المبلغ", 'balance'),
                  screen2: ttf.tabtransform(" اضافه المبلغ", "الكمية", 'gomla'),
                  screen3: const BacatScreen(),
                  screen4: CategoriePaymentFawry(),
                  screen5:
                      ttf.tabtransform(" اضافه المبلغ", "المبلغ", 'balance')),
            ),
          ),
        ],
      ),
    );
  }
}
