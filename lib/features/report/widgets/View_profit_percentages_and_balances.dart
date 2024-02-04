
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import '../controler/reborts_controllar.dart';
import 'A_function_to_display_profit_percentages_and_balances.dart';
import 'custome_container_for_report.dart';

ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());
Container View_Profit_Percentages_And_Balances() {
  return CustomeContainerForReport(
    // height: SizeConfig.screenHeight!*0.25,
    color: AppColors.kPrimaryColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'حصالة الأرباح',
            style: TextStyle(
                color: Colors.white, fontSize: SizeConfig.defaultSize! * 2),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 1),
          SizedBox(
            width: SizeConfig.defaultSize! * 10,
            height: SizeConfig.defaultSize! * 10,
            child: Obx(() => MyCircularWidgetWithPercentage(
                strokeWidth: 10.0,
  backgroundColor: Colors.black,
  foregroundColor: Colors.red,
  textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),

                percentage: reportConttrollar.percentage.value)),
          ),
        ])),
        Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'حصالة الأرباح',
            style: TextStyle(
                color: Colors.white, fontSize: SizeConfig.defaultSize! * 2),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 1),
          SizedBox(
            width: SizeConfig.defaultSize! * 10,
            height: SizeConfig.defaultSize! * 10,
            child: Obx(() => MyCircularWidgetWithPercentage(
                strokeWidth: 10.0,
  backgroundColor: Colors.black,
  foregroundColor: Colors.red,
  textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),

                percentage: reportConttrollar.myWallet.value)),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 1),
        ]))
      ],
    ),
  );
}
