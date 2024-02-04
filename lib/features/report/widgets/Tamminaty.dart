
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/appbar.dart';
import '../../../app.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import 'bond_report_details_3/custome_bond.dart';

class Tamminaty extends StatelessWidget {
  const Tamminaty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "تاميناتي ",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
          Get.to(const MyHomePage());
        },
      ),
      body: Column(children: [
        customeBondReport(context),
        Container(
          child: Column(children: [
            custom_capping_support(
                title: "سند قبض رقم 44251",
                text: "المبلغ 10000 التاريخ  08/08/2023 البيان",
                color: const Color.fromARGB(255, 225, 216, 204)),
            custom_capping_support(
                title: "سند قبض رقم 44251",
                text: "المبلغ 10000 التاريخ  08/08/2023 البيان",
                color: const Color.fromARGB(255, 225, 216, 204)),
            custom_capping_support(
                title: "سند قبض رقم 44251",
                text: "المبلغ 10000 التاريخ  08/08/2023 البيان",
                color: const Color.fromARGB(255, 225, 216, 204)),
          ]),
        ),
      ]),
    );
  }

  Container custom_capping_support(
      {Color? color, String? title, String? text}) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 7, top: 7),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.done,
                  color: AppColors.kPrimaryColor,
                ),
                Column(children: [
                  Text(
                    title!,
                    // "سند قبض رقم 44251",
                    style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
                  ),
                  Text(
                    text!,
                    // "المبلغ 10000 التاريخ  08/08/2023 البيان",
                  ),
                ]),
              ],
            ),
            Icon(
              Icons.print,
              color: AppColors.kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
