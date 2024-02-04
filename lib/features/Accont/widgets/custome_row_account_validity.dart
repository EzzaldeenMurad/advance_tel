import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/customButoon.dart';

Row Row_Account_Admen_validity({
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
      
     
            // Get.dialog(const UpdateLoginName());
          
        
       
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Icon(
            icon ?? Icons.person,
            color: iconColor ?? Colors.yellowAccent,
            size: SizeConfig.defaultSize! * 4.2,
          ),
          ////
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    text1!,
                    // "اسم الدخول",
                    style: TextStyle(
                      
                      fontSize: SizeConfig.defaultSize! * 1.8,
                    ),
                  ),
                ),
                Container(
                   width: 180,
             
                  margin: const EdgeInsets.only(right: 0),
                  child: Text(
                    text2!,
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 1.6,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),

           
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
    ],
  );
}
