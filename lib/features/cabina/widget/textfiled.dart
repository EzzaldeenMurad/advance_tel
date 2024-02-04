import 'package:flutter/material.dart';

import '../../../core/utiles/size_config.dart';
import '../controllers/phone_number_controller.dart';
import 'coustom_textfiled.dart';

Container customeContainerTextForm({
  bool readOnly = false,
  // bool isIconChanged = true,

  required String text,
  required PhoneNumberController controllerNum,
  required TextEditingController textController,
  Widget? prefixIcon,
  Widget? suffixIcon,
  IconData? isIconChanged,
  InputBorder? border,
  EdgeInsetsGeometry? margin,
  int? maxLength,
  FocusNode? focusNode,
  void Function(String)? onChanged,
  Widget? Function(BuildContext context,
          {required int currentLength,
          required bool isFocused,
          required int? maxLength})?
      buildCounter,
}) =>
    Container(
        width: SizeConfig.screenWidth! * 0.6,
        height: SizeConfig.screenHeight! * 0.1,
        margin: margin,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.transparent,
        ),
        child:
              // Stack(
              //   children: [
              customTextFiled(
            readOnly: readOnly,
            controller: textController,
            text: text,

            border: border,

            prefixIcon: prefixIcon,
            // IconButton(
            //   icon: Icon(
            //     prefixIcon,
            //     color: controllerNum.chackenum(
            //       widgetSbafone: AppColors.sabafonUnselectedLabelColor,
            //       widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
            //       widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
            //       widgetYou: AppColors.youBackGroundSelectedLabelColor,
            //       widgetAdenNet:AppColors.adenNetUnselectedLabelColor ,
            //       widgetWay: AppColors.wayUnselectedLabelColor,
            //       widget: AppColors.kPrimaryColor,
            //     ),
            //   ),
            //   onPressed: () {
            //     // controllerNum.numper.value='';
            //     textController.clear();
            //   },
            // ),
            // suffixIcon: Icon(
            //   suffixIcon,
            //   color: controllerNum.chackenum(
            //     widgetSbafone: AppColors.sabafonUnselectedLabelColor,
            //     widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
            //     widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
            //     widgetYou: AppColors.youBackGroundSelectedLabelColor,
            //     widget: AppColors.kPrimaryColor,
            //   ),

            // ),
            suffixIcon: suffixIcon,
            onChanged: onChanged,
            maxLength: maxLength,
            buildCounter: buildCounter,
            // focusNode: focusNode,
            // validator:
          ),
          //     Positioned(
          //       left: 0,
          //       child: Text('6')),
          //   ],
          // ),
        );
