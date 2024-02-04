
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/customButoon.dart';

class Responce extends StatelessWidget {
  // final controller;
  // bool? iswhite = true;
final responce;
  const Responce(this.responce, {super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: SizeConfig.defaultSize! * 1),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 3),
            height:SizeConfig.screenHeight!*0.3,
            width:SizeConfig.screenWidth!*0.5,
            child: 
            // iswhite == true
            //     ? CircularProgressIndicator()
            //     :
                 Column(
                    children: [
                      Text(responce),
                      SizedBox(height:SizeConfig.screenHeight!*0.06, ),
                      customButoon(
                        background: Colors.red,
                          child: const Text('موافق'),
                          function: () {
                            Get.back();
                          })
                    ],
                  )));
  }
}
