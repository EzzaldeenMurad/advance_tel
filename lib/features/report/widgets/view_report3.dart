import '/features/report/widgets/tap_par.dart';
import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'custome_container_for_report.dart';

Container View_Report3() {
  return CustomeContainerForReport(
    color:Colors.white,
     height: SizeConfig.screenHeight! * 0.55,
    child: const MyTabbedPage());
}
