
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';


// ignore: non_constant_identifier_names
InkWell custom_contener_btom(
    // ignore: non_constant_identifier_names
    {required String text, dynamic Page1, double? width}) {
  return InkWell(
    child: Container(
      height: SizeConfig.defaultSize! * 15,
      width: width,
      decoration:  BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),

      margin: EdgeInsets.all(SizeConfig.defaultSize! * 1.3),
      // padding: EdgeInsets.all(5),

      child: Column(
        children: [
          Icon(
            Icons.attach_money_outlined,
            color: AppColors.colorIconsAllAPP,
            size: SizeConfig.defaultSize! * 4,
          ),
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: SizeConfig.defaultSize! * 2.5, color: Colors.blue),
          ),
          Expanded(
            child: Container(
              height: SizeConfig.defaultSize! * 6.6,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 15),
                      width: SizeConfig.defaultSize! * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2.5,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: SizeConfig.defaultSize! * 2.5,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ),
    onTap: () {
      Get.to(Page1);
    },
  );
}
