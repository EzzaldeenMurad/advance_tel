import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'bond_report_details_3/bond_report.dart';
import 'bond_report_details_3/receipt_vouchers_reports.dart';
import 'bond_report_details_3/transfers_on_you.dart';
import 'bond_report_details_3/transfers_to_you.dart';
import 'custom_contener_btom.dart';
import 'custome_container_for_report.dart';

Container View_Report_4() {
  return CustomeContainerForReport(
    color: Colors.white,
      child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          custom_contener_btom(
              text: "سندات صرف",
              Page1: const BondReport(),
              width: SizeConfig.defaultSize! * 17),
          custom_contener_btom(
              text: "سندات قبض",
              Page1: const ReceiptVouchersReports(),
              width: SizeConfig.defaultSize! * 17),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          custom_contener_btom(
              text: "عليكم تحويلات",
             Page1: const TransfersOnYou(),
              width: SizeConfig.defaultSize! * 17),
          custom_contener_btom(
              text: "لكم تحويلات",
               Page1: const TransfersToYou(),
              width: SizeConfig.defaultSize! * 17),
        ],
      ),
      custom_contener_btom(
          text: "عمولاتي",
           Page1: const TransfersToYou(),
          width: SizeConfig.defaultSize! * 36.5),
    ],
  ));
}
