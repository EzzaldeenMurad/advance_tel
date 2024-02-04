import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utiles/size_config.dart';

Dialog dailogWaiting() {
  return Dialog(
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
          padding: const EdgeInsets.only(top: 30),
          height: SizeConfig.defaultSize! * 25,
          width: SizeConfig.screenWidth! * 0.10,
          child: Center(
              child: Column(
            children: [
              (const CupertinoActivityIndicator(
                radius: 20,
              )),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              const Text('...الرجى الانتظار قليلا'),
            ],
          ))));
}
