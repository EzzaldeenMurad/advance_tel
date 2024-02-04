
  import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/widgets/customButoon.dart';
import '../../cabina/widget/coustom_textfiled.dart';

Dialog custom_edite({
    final String? Titel,
    final String? text,
  }) {
    return Dialog(
        insetPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            padding: const EdgeInsets.only(top: 40),
            height: SizeConfig.defaultSize! * 35,
            width: SizeConfig.defaultSize! * 34,
            child: Column(children: [
              Text(
                Titel!,
                style: const TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customTextFiled(
                    textAlign: TextAlign.start,
                    border: const OutlineInputBorder(),
                    text: text!,
                    prefixIcon: const Icon(Icons.person)),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customButoon(
                    background: AppColors.kPrimaryColor,
                    width: SizeConfig.screenWidth! * 0.3,
                    child: Text("cancell",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        )),
                    function: () {
                      Get.back();
                    },
                  ),
                  customButoon(
                    background: AppColors.kPrimaryColor,
                    width: SizeConfig.screenWidth! * 0.3,
                    child: Text("OK",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        )),
                    function: () {
                      Get.back();
                    },
                  )
                ],
              ),
            ])));
  }
