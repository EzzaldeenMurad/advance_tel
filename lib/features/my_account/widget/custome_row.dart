import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';

Row IconTextListWidget({
  IconData? icon1,
  String? text,
  required void Function() onTap,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: const EdgeInsets.only(right: 5),
        width: SizeConfig.defaultSize! * 13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onTap,
              child: Icon(
                Icons.alarm,
                size: SizeConfig.defaultSize! * 3,
                color:  Colors.brown
              ),
            ),
            Icon(
              Icons.block,
              color:  AppColors.kPrimaryColor,
              size: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 5),
        width: SizeConfig.defaultSize! * 15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text!,style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.7,),),
            Icon(
              icon1,
              color:   AppColors.kPrimaryColor,
              size: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
    ],
  );
}
