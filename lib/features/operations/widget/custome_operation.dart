// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/utiles/constants.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/services/api comme/operation_status/operation_api_status_service.dart';
import '../../../core/widgets/future_builder_responce.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';
import '../../../core/widgets/dailog/dailog_waiting.dart';
import '../../cabina/controllers/operation_status/operation_status_controller.dart';
import 'delete_pocesses.dart';

class CustomeOperation extends StatelessWidget {
  final String? name;
  final String? price;
  final String? phoneNumber;
  final String? transid;
  final String? status;
  final String? token;
  Color? color;
  final String? date;
  CustomeOperation(
      {super.key,
      this.name,
      this.price,
      this.phoneNumber,
      this.transid,
      this.status,
      this.color,
      this.token,
      required this.date});
  OperationStatusController operationStatusController =
      Get.put(OperationStatusController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          //  margin: EdgeInsets.only(top: 5,left: 10, right: 10),
          padding: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
          child: Column(

              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(Icons.check, color: Colors.white),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: SizeConfig.screenWidth! * 0.06),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Text(
                                //   '${transid.toString()}  رقم العمليه',
                                //   style: TextStyle(
                                //       fontSize:
                                //           SizeConfig.defaultSize! * 1.5,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                Text(
                                  name ?? '',
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize! * 1.8,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${price ?? ' '} :السعر',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.defaultSize! * 1.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.defaultSize! * 1.5),
                                    Text(
                                      '${phoneNumber ?? ''}:رقم التلفون',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.defaultSize! * 1.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  '$date  التاريخ',
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize! * 1.5,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: SizeConfig.screenWidth! * 0.03),
                              ]),
                          SizedBox(width: SizeConfig.defaultSize! * 1),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 203, 194, 194),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: SizeConfig.screenHeight! * 0.08,
                            width: SizeConfig.screenWidth! * 0.13,
                            child: Center(
                                child: Text(
                              status ?? '',
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize! * 2),
                            )),
                          )
                        ],
                      )
                    ]),
                // SizedBox(width: SizeConfig.defaultSize! * 1),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custompress(
                          text: " فحص",
                          icon: Icons.refresh,
                          function: () {
                            operationStatusController.getOperationStatus(
                              function:
                                  OperationApiStatusService.fetchQueryBalance(
                                userId: userId,
                                mobile: phoneNumber,
                                transId: transid ?? '',
                                token: token ?? '',
                              ),
                            );
                            Get.dialog(Obx(() => checkResponce2(
                                      success: operationStatusController
                                          .query.value.resultDesc,
                                      faild: operationStatusController
                                          .query.value.resultDesc,
                                      controller: operationStatusController,
                                    ) ==
                                    'null'
                                ? dailogWaiting()
                                : operationStatusController
                                            .query.value.resultCode ==
                                        '0'
                                    ? operationStatusController
                                                .query.value.isBan ==
                                            0
                                        ? operationStatusController
                                                    .query.value.isDone ==
                                                1
                                            ? customDailogResult(
                                                text: 'العمليه في النظام جاهز ')
                                            : customDailogResult(
                                                text: 'العمليه قيد التقدم  ')
                                        : customDailogResult(
                                            text: 'العمليه  فشلت ')
                                    : customDailogResult(
                                        text: checkResponce2(
                                            success: operationStatusController
                                                .query.value.resultDesc,
                                            controller:
                                                operationStatusController,
                                            faild: operationStatusController
                                                .query.value.resultDesc),
                                      )));
                          }),
                      // custompress(
                      //     text: " مراسلة",
                      //     icon: Icons.message,
                      //     function: () {}),
                      // custompress(
                      //     text: " طباعة", icon: Icons.print, function: () {}),
                      // custompress(
                      //     text: " تفاصيل", icon: Icons.gavel, function: () {}),
                      custompress(
                          text: " حذف",
                          icon: Icons.delete,
                          function: () {
                            Get.dialog(const DeleteProcesses());
                          }),
                    ]),
                SizedBox(height: SizeConfig.defaultSize! * 0.5),
              ])),
    );
  }
}
// Padding CustomeProcesses({
//   required String? text1,
//   required String? text2,
//   required String? text3,
//   required OperationStatusController operationStatusController,
//   required Color? colors,
// }) {
//   return

// }

InkWell custompress(
    {required String? text,
    required IconData? icon,
    void Function()? function}) {
  return InkWell(
    onTap: function,
    child: Container(
        width: SizeConfig.screenWidth! * 0.16,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            Text(
              text ?? '',
              style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.7),
            )
          ],
        )),
  );
}
