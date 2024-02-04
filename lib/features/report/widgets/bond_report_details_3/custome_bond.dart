
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utiles/app__colors.dart';
import '../../../../core/utiles/size_config.dart';
import '../../../../core/widgets/customButoon.dart';
import '../../controler/reborts_controllar.dart';
import '../../controler/sersh.dart';
import '../dailog/dailog_account.dart';
// class Date extends GetxController {

Column customeBondReport(BuildContext context) {
  Date date = Get.put(Date());
  // Date date1 = Get.put(Date());
  return Column(children: <Widget>[
    Container(
      margin: EdgeInsets.only(
          top: SizeConfig.defaultSize! * 0.5, left: 0.5, right: 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        customButoon(
          radius: 0,
          background: AppColors.kPrimaryColor,
          height: SizeConfig.screenWidth! * 0.12,
          width: SizeConfig.screenWidth! * 0.478,
          child: Text("الحساب",
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 2.1,
              )),
          function: () {
            Get.dialog(const DailogMainAccount());
          },
        ),
        customButoon(
          radius: 0,
          background: AppColors.kPrimaryColor,
          height: SizeConfig.screenWidth! * 0.12,
          width: SizeConfig.screenWidth! * 0.478,
          child: Text("اسامة عادل عبده",
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 2.1,
              )),
          function: () {
            Get.to(MySearchPage());
          },
        ),
        // MySearchPage()),
      ]),
    ),
    SizedBox(height: SizeConfig.screenHeight! * 0.01),
    Container(
      height: SizeConfig.screenHeight! * 0.09,
      padding: EdgeInsets.only(
        right: SizeConfig.defaultSize! * 0.4,
      ),
      color: const Color.fromARGB(255, 212, 209, 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 212, 209, 200)),
              onPressed: () => date.showStartDatePicker(context),
              child: Text(' ${date.formatter.format(date.startDate.value)}',
                  style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.8,
                      color: Colors.black)),
            ),
            const Icon(Icons.date_range)
          ]),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 212, 209, 200),
                ),
                onPressed: () => date.showEndDatePicker(context),
                child: Text(' ${date.formatter.format(date.endDate.value)}',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 1.8,
                        color: Colors.black)),
              ),
              const Icon(Icons.date_range)
            ],
          ),
        ],
      ),
    ),
  ]);
}
