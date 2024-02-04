import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/appbar.dart';
import 'custome_report2.dart';

class PaymentsProcesses extends StatelessWidget {
  const PaymentsProcesses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: " العمليات",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
          Get.back();
        },
      ),
      body: custome_report2(context),
    );
  }
}
