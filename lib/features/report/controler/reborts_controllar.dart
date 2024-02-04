import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

class ReportConttrollar extends GetxController {
  RxDouble percentage = 15.0.obs;
  RxDouble myWallet = 40.0.obs;
  RxDouble mywelt = 25.0.obs;
  var textnumber = "4".obs;
}

class Date extends GetxController {
  Rx<DateTime> startDate = DateTime.now().obs;
  Rx<DateTime> endDate = DateTime.now().add(const Duration(days: 7)).obs;
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  void showStartDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate.value,
      firstDate: DateTime(1800),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != startDate.value) {
      startDate.value = picked;
    }
  }

  void showEndDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate.value,
      firstDate: DateTime(1800),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != endDate.value) {
      endDate.value = picked;
    }
  }
}
