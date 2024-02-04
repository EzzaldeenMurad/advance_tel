
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/customButoon.dart';
import '../../report/controler/reborts_controllar.dart';

class SerchProcesses extends StatefulWidget {
  const SerchProcesses({super.key});

  @override
  State<SerchProcesses> createState() => _ConfirmRequstState();
}

ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());

class _ConfirmRequstState extends State<SerchProcesses> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Date datee = Get.put(Date());
    return Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 15, vertical: SizeConfig.defaultSize! * 8),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ' رقم هاتف/شريحة/برمجة',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),

                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  //     locale: const Locale('ar'),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.02,
              ),
              Text(
                "--------------الحالة--------------",
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 2.5,
                    color: Colors.orange),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text("ملغي",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.blue))),
                  TextButton(
                      onPressed: () {},
                      child: Text("معلق",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.blue))),
                  TextButton(
                      onPressed: () {},
                      child: Text("جاهز",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.blue)))
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth!*0.3,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:
                                ' ${datee.formatter.format(datee.endDate.value)}',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          //     locale: const Locale('ar'),
                        ),
                      ),
                      IconButton(
                          onPressed: () => datee.showEndDatePicker(context),
                          icon: const Icon(Icons.date_range_outlined)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth!*0.3,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:
                                ' ${datee.formatter.format(datee.startDate.value)}',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          //     locale: const Locale('ar'),
                        ),
                      ),
                      IconButton(
                          onPressed: () => datee.showStartDatePicker(context),
                          icon: const Icon(Icons.date_range_outlined)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customButoon(
                      background: Colors.red,
                      child: Text("اغلاق",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.white)),
                      function: () {
                        Get.back();
                      }),
                  customButoon(
                      background: Colors.blue,
                      child: Text("تصفية",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.white)),
                      function: () {}),
                  customButoon(
                      background: Colors.blue,
                      child: Text("بحث",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2,
                              color: Colors.white)),
                      function: () {})
                ],
              )
            ])));
  }
}
