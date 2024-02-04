import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../customButoon.dart';
import '../../utiles/size_config.dart';

Dialog customDailogResult({
  String? text,
}) {
  return Dialog(
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
          padding: const EdgeInsets.only(top: 30),
          height: SizeConfig.defaultSize! * 30,
          width: SizeConfig.screenWidth! * 0.34,
          child: Column(
              //   mainAxisAlignment: MainAxisAlignment.,
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.orange,
                  size: SizeConfig.defaultSize! * 4,
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1.5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.center,
                  child: Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 2,
                      color: Colors.orange,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 4,
                ),
                customButoon(
                    background: const Color.fromARGB(255, 133, 168, 51),
                    width: SizeConfig.screenWidth! * 0.6,
                    child: Text("موافق",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        )),
                    function: () {
                      Get.back();
                    })
              ])));
}
