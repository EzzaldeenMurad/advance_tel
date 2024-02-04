

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/appbar.dart';
import '../../screen/report_home.dart';
import 'custome_bond.dart';

class MyMommissionsRreports extends StatelessWidget {
  const MyMommissionsRreports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        text: "عمولاتي ",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
           Get.to(const ReportHome());
        },
      ),
      body: customeBondReport(context))
    
    ;
  }
}
