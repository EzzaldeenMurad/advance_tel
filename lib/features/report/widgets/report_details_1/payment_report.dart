import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/appbar.dart';
import '../../screen/report_home.dart';
import '../custome_report1.dart';

class PaymentReports extends StatelessWidget {
  const PaymentReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "تقارير التسديدات",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
         Get.to(const ReportHome());
        },
      ),
      body: custome_report1(context),
    );
  }
}
