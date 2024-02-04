import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../report/controler/reborts_controllar.dart';
import '../../report/widgets/A_function_to_display_profit_percentages_and_balances.dart';
import '../controllers/phone_number_controller.dart';

class GahezGahz extends StatelessWidget {
  ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());
  PhoneNumberController searchConttrollar = Get.find();
  final String? companyName;
  final String? category;
  String? status;
  final String? phoneNumber;
  int? balance;
  String? price;

  GahezGahz({
    super.key,
    this.price,
    this.companyName,
    this.category,
    this.status,
    this.phoneNumber,
    this.balance,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 40, vertical: SizeConfig.defaultSize! * 8),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        elevation: 8,
        shadowColor: Colors.green.withOpacity(0.50),
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),

            // height: double.infinity,
            // width: double.infinity,
            child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),

                    //   margin: EdgeInsets.only(top: 5),
                    width: SizeConfig.screenWidth,

                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: SizeConfig.defaultSize! * 3.5,
                          child: Icon(
                            Icons.done,
                            size: SizeConfig.defaultSize! * 6.5,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Column(
//mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "جاهز ",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2.5,
                              color: Colors.green),
                        ),
                        Text(
                          "تم تسديد المبلغ بانجاح ",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 1.8,
                              color: Colors.green),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.006,
                        ),
                        //////
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text(
                            //   'ryal',
                            //   style: TextStyle(
                            //       fontSize: SizeConfig.defaultSize! * 1.6,
                            //       color: Colors.green),
                            // ),
                            Text(
                              price!,
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize! * 1.6,
                                  color: Colors.green),
                            ),
                            Text(
                              "بمبلغ ",
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize! * 1.6,
                                  color: Colors.green),
                            ),
                            Text(
                              searchConttrollar.textPhoneController.value.text,
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize! * 1.6,
                                  color: Colors.green),
                            ),
                            Text(
                              ": تم تسديد الرقم",
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize! * 1.6,
                                  color: Colors.green),
                            ),
                          ],
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     customButoon(
                        //         child: Text(
                        //           "مشاركة",
                        //           style: TextStyle(
                        //             color: Colors.blue,
                        //             fontSize: SizeConfig.defaultSize! * 1.6,
                        //           ),
                        //         ),
                        //         function: () {}),
                        //     customButoon(
                        //         child: Text(
                        //           "نسخ",
                        //           style: TextStyle(
                        //             color: Colors.blue,
                        //             fontSize: SizeConfig.defaultSize! * 1.6,
                        //           ),
                        //         ),
                        //         function: () {})
                        //   ],
                        // ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              //color: Colors.green,
                              child: SizedBox(
                                width: SizeConfig.screenWidth! * 0.2,
                                height: SizeConfig.screenHeight! * 0.2,
                                child: Obx(() => MyCircularWidgetWithPercentage(
                                    strokeWidth: 10.0,
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.green,
                                    textStyle: const TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                    percentage:
                                        reportConttrollar.mywelt.value)),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "  رصيدك الحالي",
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize! * 1.5,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  balance.toString(),
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize! * 1.4,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 148, 28, 20),
                              ),
                              onPressed: () {
                                // addOperation();
                                Get.back();
                              },
                              icon: const Icon(
                                Icons.cancel_sharp,
                                size: 24.0,
                              ),
                              label: const Text(' الغاء'),
                            ),
                            // ElevatedButton.icon(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.blue,
                            //   ),
                            //   icon: const Icon(
                            //     Icons.message,
                            //     size: 24.0,
                            //   ),
                            //   label: const Text('عبر الرسائل'), // <-- Text
                            // ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {
                                // addOperation();
                                Get.back();
                              },
                              icon: const Icon(
                                Icons.done_all_rounded,
                                size: 24.0,
                              ),
                              label: const Text('موفق'), // <-- Text
                            ),
                          ],
                        )
                      ])
                ])));

    // custom_gahez_gaheze( num_phone: "775261894",
    // perss: " 1000",
    // current_balance: "1500",
    // ryal: "ريال",);
    // }

    // Dialog custom_gahez_gaheze({

    // }) {
    //   return
    // }
  }
}
