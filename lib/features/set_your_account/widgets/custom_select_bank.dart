import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';

InkWell Custom_Select_Bank({String? text, String? text1, dynamic pagee}) {
  return InkWell(
    child: Expanded(
      child: Container(
          padding: const EdgeInsets.only(left: 0, right: 010, bottom: 15, top: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 132, 192, 207),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    text!,
                    style: TextStyle(fontSize: SizeConfig.defaultSize! * 2.5),
                  ),
                  Text(
                    text1!,
                    style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.5),
                  )
                ],
              ),
              CircleAvatar(
                  radius: SizeConfig.defaultSize! * 4,
                  child: Icon(
                    Icons.person,
                    size: SizeConfig.defaultSize! * 6.5,
                  )),
            ],
          )),
    ),
    onTap: () {
      Get.to(pagee);
    },
  );
}
