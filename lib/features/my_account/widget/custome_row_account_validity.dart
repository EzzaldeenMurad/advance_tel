import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/customButoon.dart';

Row Row_Account_validity({
  final bool? showButton,
  final  Function? ontap,
  final Color? buttonColor,
  final String? buttonText,
  final IconData? icon,
  final Color? iconColor,
  final String? text1,
  final String? text2,
   required Function() function,
   final Widget? leftWidget,
  final Widget? rightWidget,
  // double? width,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      
          
      if (showButton != null && showButton == true)
        customButoon(
          child: Text(
            buttonText ?? "تحديث",
            style: TextStyle(
              color: buttonColor ?? Colors.blue,
              fontSize: SizeConfig.defaultSize! * 2.1,
            ),
          ),
          function: function
        ),
            // Get.dialog(const UpdateLoginName());
          
        
       
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ////
          Column(
            children: [
              Text(
                text1!,
                // "اسم الدخول",
                style: TextStyle(
                  
                  fontSize: SizeConfig.defaultSize! * 1.8,
                ),
              ),
              Text(
                text2!,
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.6,
                    color: Colors.grey),
              ),
            ],
          ),
          Icon(
            icon ?? Icons.person,
            color: iconColor ?? Colors.yellowAccent,
            size: SizeConfig.defaultSize! * 4.2,
          )
        ],
      ),
    ],
  );
}
