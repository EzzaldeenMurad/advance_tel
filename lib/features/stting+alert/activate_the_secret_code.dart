import 'package:flutter/material.dart';

import '../../core/utiles/size_config.dart';

import '../../core/widgets/customButoon.dart';

// ignore: camel_case_types
class ActivateTheSecretCode extends StatefulWidget {
  const ActivateTheSecretCode({super.key});

  @override
  State<ActivateTheSecretCode> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<ActivateTheSecretCode> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
        insetPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            padding: const EdgeInsets.only(top: 30),
            // width: 320,
            // height: 450,
            height: SizeConfig.screenHeight! * 0.6,
            width: SizeConfig.screenWidth! * 0.8,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تفعيل الرمز السري",
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    // customTextFiledd(
                    //   suffixIcon: const Icon(Icons.done),
                    //   text: ' الرمز السري',
                    //   border: const OutlineInputBorder(
                    //       borderRadius:
                    //           BorderRadius.all(Radius.circular(10.0))),
                    // ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    // customTextFiled(
                    //   suffixIcon: const Icon(Icons.done),
                    //   text: ' تاكيدالرمز السري ',
                    //   border: const OutlineInputBorder(
                    //       borderRadius:
                    //           BorderRadius.all(Radius.circular(10.0))),
                    // ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.1,
                    ),
                    customButoon(
                        background: Colors.blue,
                        width: SizeConfig.screenWidth! * 0.4,
                        child: const Text(" حفظ"),
                        function: () {})
                  ]),
            )));
  }
}
