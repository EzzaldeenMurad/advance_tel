import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/appbar.dart';
import '../../screen/report_home.dart';
import '../custome_report1.dart';

class MoneyTransfersReport extends StatelessWidget {
  const MoneyTransfersReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:CustomAppBar(
        text: "تقارير الحوالات المالية",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
         Get.to(const ReportHome());
        },
      ),
      body: custome_report1(context),
    );
  }
}
