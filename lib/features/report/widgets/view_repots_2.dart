import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'report_details_1/account_statemebt.dart';
import 'report_details_1/branch_shots_report.dart';
import 'report_details_1/money_transfers_report.dart';
import 'report_details_1/payment_report.dart';
import 'report_details_1/register_report.dart';
import 'report_details_1/stock_report.dart';
import '../../../core/widgets/custom_gridtile.dart';
import 'custome_container_for_report.dart';

Container View_Reports_2() {
  return CustomeContainerForReport(
    color: Colors.white,
    height: SizeConfig.screenHeight! * 0.4,
    child: LayoutBuilder(
      builder: (context, constraints) {
        return GridView.count(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
          crossAxisCount:3,
           // يحدد عدد الأعمدة بناءً على عرض الشاشة
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          children: [
            CustomGridTile(
              iconData: Icons.balance_rounded,
              text: " الارصدة",
              page: const StockReports(),
            ),
            CustomGridTile(
              iconData: Icons.book,
              text: " سجل",
              page: const RegisterReports(),
            ),
            CustomGridTile(
              iconData: Icons.account_balance,
              text: " كشف حساب",
              page: const AccountReports(),
            ),
            CustomGridTile(
              iconData: Icons.compare_arrows,
              text: " الحوالات المالية",
              page: const MoneyTransfersReport(),
            ),
            CustomGridTile(
              iconData: Icons.padding,
              text: " تسديدات الفروع",
              page: const BranchShotsReport(),
            ),
            CustomGridTile(
              iconData: Icons.payment,
              text: " التسديدات",
              page: const PaymentReports(),
            ),
          ],
        );
      },
    ),
  );
}
