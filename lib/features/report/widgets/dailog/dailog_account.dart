import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utiles/size_config.dart';


// ignore: camel_case_types
class DailogMainAccount extends StatefulWidget {
  const DailogMainAccount({super.key});

  @override
  State<DailogMainAccount> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<DailogMainAccount> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      backgroundColor: const Color.fromARGB(255, 196, 243, 252),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        // width: 320,
        // height: 450,
        height: SizeConfig.screenHeight! * 0.65,
        width: SizeConfig.screenWidth! * 0.8,
        child: Column(children: [
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: SizeConfig.defaultSize! * 4,
              child: Icon(
                Icons.dynamic_feed_sharp,
                size: SizeConfig.defaultSize! * 6.5,
              )),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.03,
          ),
          InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("يمني \t 0",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: SizeConfig.defaultSize! * 2,
                      )),
                  Row(
                    children: [
                      Text("25871",
                          style: TextStyle(
                            fontSize: SizeConfig.defaultSize! * 2,
                            color: Colors.blue,
                          )),
                      const Icon(
                        Icons.person_pin_rounded,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
              onTap: () {
                Get.back();
              }),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 0,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  child: Text("الحساب الرئيسي",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: SizeConfig.defaultSize! * 2)),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
              ],
            ),
            onTap: () {
              Get.back();
            },
          )
        ]),
      ),
    );
  }
}
