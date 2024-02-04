
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utiles/app__colors.dart';
import '../utiles/size_config.dart';




// ignore: non_constant_identifier_names
InkWell CustomGridTile({
  required IconData iconData,
  double size = 30.0,
  // Color color = Colors.black,
  // Color shadwColoers = Colors.green,
  required String text,
  dynamic page,

  //  BuildContext? context,
}) {
  return InkWell(
    child: Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: GridTile(
        footer: Text(
          text,
          style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.72),
          textAlign: TextAlign.center,
        ),
        child: Icon(
          iconData,
          size: SizeConfig.defaultSize! * 3.5,
          color: AppColors.kPrimaryColor,
        ),
      ),
    ),
    onTap: () {
      Get.to(page);
    },
  );
}
