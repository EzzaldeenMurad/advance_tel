import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../controler/reborts_controllar.dart';

// ignore: non_constant_identifier_names
Container custum_continer_text_icon({
  required String text,
  required String? textnumber,
  double size = 24.0,
  Color color = Colors.black,
  Color shadwColoers = Colors.green,
  required BuildContext context,
  required Widget nextPage,
}) {
  ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
    ),
    height: SizeConfig.defaultSize! * 6,
    margin: EdgeInsets.only(right: SizeConfig.defaultSize! * 1),
    child: InkWell(
      onTap: () {
        Get.to(nextPage);
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color:  AppColors.kPrimaryColor,
                    iconSize: SizeConfig.defaultSize! * 3,
                  ),
                  Obx(() => Text(reportConttrollar.textnumber.value,
                      style:
                          TextStyle(fontSize: SizeConfig.defaultSize! * 1.7)))
                ],
              ),
              Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
              )
            ],
          )
        ],
      ),
    ),
  );
}
