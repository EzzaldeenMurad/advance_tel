import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/widgets/customButoon.dart';


// ignore: camel_case_types
class Cancellaion_And_Deletion_of_the_account extends StatefulWidget {
  const Cancellaion_And_Deletion_of_the_account({super.key});

  @override
  State<Cancellaion_And_Deletion_of_the_account> createState() =>
      _ConfirmRequstState();
}

class _ConfirmRequstState
    extends State<Cancellaion_And_Deletion_of_the_account> {
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
            height: SizeConfig.defaultSize! * 27,
            width: SizeConfig.defaultSize! * 34,
            child: Column(children: [
              Icon(
                Icons.warning,
                color:   AppColors.kPrimaryColor,
                size: SizeConfig.defaultSize! * 4,
              ),

              SizedBox(
                height: SizeConfig.defaultSize! * 3,
              ),
              Text(
               "هل تريد حذف والغاء حسابك ؟",style: TextStyle(
                fontSize: SizeConfig.defaultSize! * 2,
              ),),
              SizedBox(
                height: SizeConfig.defaultSize! * 4,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                customButoon(
                  background: const Color.fromARGB(255, 170, 213, 248),
                  width: SizeConfig.screenWidth! * 0.3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.no_accounts,
                          color: Colors.black,
                        ),
                        Text(
                           "لا",style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.defaultSize! * 2.1,)
                        ),
                      ]),
                  function: () {
                    Get.back();
                  },
                ),
                customButoon(
                  background: Colors.red,
                  width: SizeConfig.screenWidth! * 0.3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        Text(
                           "نعم",style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        ),)
                      ]),
                  function: () {
                    Get.back();
                  },
                )
              ])

              //  custome_inkwell("تحديث", MyApp(), context)
            ])));
  }
}
