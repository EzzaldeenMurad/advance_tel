
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/appbar.dart';
import '../widgets/View_Report_4.dart';
import '../widgets/View_profit_percentages_and_balances.dart';
import '../widgets/view_report3.dart';
import '../widgets/view_repots_2.dart';

class ReportHome extends StatefulWidget {
  const ReportHome({super.key});

  @override
  State<ReportHome> createState() => _nameState();
}

class _nameState extends State<ReportHome> {
  Widget bodyReport() {
    return SingleChildScrollView(child: 
          Column(children: <Widget>[
            View_Profit_Percentages_And_Balances(),
            View_Reports_2(),
            View_Report3(),
            View_Report_4()
          ])
        );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       appBar: CustomAppBar(
          text: " التقارير",
          iconData: Icons.arrow_back_rounded,
          onPressed: () {
            Get.to(const MyHomePage());
          },
        ),
      backgroundColor: const Color.fromARGB(255, 194, 223, 235),
      body: bodyReport(),
    );
  }
}
