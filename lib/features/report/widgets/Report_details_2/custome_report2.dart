import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utiles/size_config.dart';
import '../../../../core/widgets/customButoon.dart';

import '../../controler/sersh.dart';
import '../dailog/dailog_account.dart';


// ignore: non_constant_identifier_names
Column custome_report2(BuildContext context) {
  // Date datee = Get.put(Date());
   SizeConfig().init(context);
  return Column(children: <Widget>[
    Container(
      margin: EdgeInsets.only(
          top: SizeConfig.defaultSize! * 0.5, left: 0.5, right: 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        customButoon(
          radius: 0,
          background: Colors.blue,
          height: SizeConfig.screenWidth! * 0.12,
          width: SizeConfig.screenWidth! * 0.478,
          child: Text(
             "اختر الحساب",style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.defaultSize! * 2.1,
            )
          ),
          function: () {
            Get.to(const DailogMainAccount());
          },
        ),
        customButoon(
          radius: 0,
          background: Colors.blue,
          height: SizeConfig.screenWidth! * 0.12,
          width: SizeConfig.screenWidth! * 0.478,
          child:Text(
           "اختر النقاط والفروع",style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.defaultSize! * 2.1,)
          ),
          function: () {
            Get.to(MySearchPage());
          },
        ),
        // MySearchPage()),
      ]),
    ),
  ]);
}
