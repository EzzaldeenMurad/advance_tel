
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/appbar.dart';
import '../../screen/report_home.dart';
import 'custome_bond.dart';

class ReceiptVouchersReports extends StatelessWidget {
  const ReceiptVouchersReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        text: "سندات القبض",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
          Get.to(const ReportHome());
        },
      ),
      body: customeBondReport(context))
    
    ;
  }
}
