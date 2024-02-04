import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../../features/cabina/controllers/phone_number_controller.dart';
import '../utiles/size_config.dart';
import '../utiles/app__colors.dart';

AppColors colors = AppColors();

class ContinerUnderSliveappBAar {
  final PhoneNumberController controllerNum = Get.put(PhoneNumberController(), permanent: true);
  Container containerundersliveaapbar() {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight! * 0.12,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          color: controllerNum.checkNumber(
            widgetSbafone: AppColors.sabafonUnselectedLabelColor,
            widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
            widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
            widgetYou: AppColors.youBackGroundSelectedLabelColor,
            widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
            widgetWay: AppColors.wayUnselectedLabelColor,
            widget: AppColors.kPrimaryColor,
          )),
      child:controllerNum.numper.value.isNotEmpty?
       Obx(
        () => Shimmer.fromColors(
            baseColor: AppColors.kPrimaryColor,
            highlightColor: Colors.red,
            child: Text(
              controllerNum.nameCompany.value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color.fromARGB(255, 248, 247, 247),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
      ):null
    );
  }
}
