import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';

Container CustomeContainerForReport(
    {Widget? child, final Color? color, double? height}) {
  return Container(
  
    alignment: Alignment.center,
    width: SizeConfig.screenWidth! * 2,
    height: height,
    // SizeConfig.defaultSize! * 20,
    decoration: BoxDecoration(
        color: color, borderRadius: const BorderRadius.all(Radius.circular(25))),
    margin: EdgeInsets.all(SizeConfig.defaultSize! * 1),
    child: child,
  );
}
