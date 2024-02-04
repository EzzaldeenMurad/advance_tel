// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app.dart';
import '../../core/services/api comme/operation_status/operation_api_status_service.dart';
import '../../core/utiles/app__colors.dart';
import '../../core/utiles/constants.dart';
import '../../core/utiles/size_config.dart';
import '../../core/widgets/appbar.dart';
import '../../core/widgets/customButoon.dart';
import '../cabina/controllers/operation_status/operation_status_controller.dart';
import '../report/controler/sersh.dart';
import '../report/widgets/dailog/dailog_account.dart';
import 'controllers/operation_controller.dart';
import 'models/operation_model.dart';
import 'widget/custome_operation.dart';
import 'widget/serch_processes.dart';

class Operations extends StatefulWidget {
  final String? title;
  Operations({super.key, this.title});

  List<Color> colors = [
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
  ];

  @override
  State<Operations> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Operations> {
  OperationStatusController operationStatusController = Get.find();
  final OperationController operationController = Get.find();
  int _counter = 0;
  // OperationStatusController operationStatusController = Get.find();
  // final fireStore = FirebaseFirestore.instance;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
          text: " العمليات ",
          iconData1: Icons.search,
          iconData: Icons.arrow_back,
          onPressed1: () {},
          onPressed: () {
            Get.to(const MyHomePage());
          }),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.defaultSize! * 0.5, left: 0.5, right: 1),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            customButoon(
              radius: 0,
              background: AppColors.kPrimaryColor,
              height: SizeConfig.screenWidth! * 0.12,
              width: SizeConfig.screenWidth! * 0.478,
              child: Text("اختر الحساب",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.defaultSize! * 2.1,
                  )),
              function: () {
                Get.dialog(const DailogMainAccount());
              },
            ),
            customButoon(
              radius: 0,
              background: AppColors.kPrimaryColor,
              height: SizeConfig.screenWidth! * 0.12,
              width: SizeConfig.screenWidth! * 0.478,
              child: Text("اختر النقاط والفروع",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.defaultSize! * 2.1,
                  )),
              function: () {
                Get.to(MySearchPage());
              },
            ),
            // MySearchPage()),
          ]),
        ),
        operationStreamBuilder(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(const SerchProcesses());
        },
        // tooltip: 'Increment',
        child: const Icon(Icons.search),
      ),
    );
  }

  operationStreamBuilder() {
    return FutureBuilder<List<OperationModel>>(
      future: operationController.getOperation(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: Column(
            children: [
              (CupertinoActivityIndicator(
                radius: 20,
              )),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text('...الرجى الانتظار قليلا'),
            ],
          ));
        } else if (snapshot.hasData) {
          int color = 0;
          return Expanded(
            child: ListView.builder(
              itemCount: operationController.operation.length,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              itemBuilder: (context, index) {
                // final operation = snapshot.data![index ];
                final operation = operationController.operation[index];
                color++;
                if (widget.colors.length == 12) color = 0;

                // operationStatusController.getOperationStatus(
                //   function: OperationApiStatusService.fetchQueryBalance(
                //     userId: userId,
                //     mobile: operation.phoneNumber,
                //     transId: operation.transId.toString(),
                //     token: operation.token,
                //   ),
                // );
                // if (operationStatusController.query.value.isDone == 1) {

                // }
                return ListTile(
                  onTap: () {},
                  title: CustomeOperation(
                    name: operation.serviceName,
                    phoneNumber: operation.phoneNumber.toString(),
                    status: operation.status,
                    price: operation.price.toString(),
                    transid: operation.transId.toString(),
                    token: operation.token,
                    color: widget.colors[color],
                    date: operation.createdAt,
                  ),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
