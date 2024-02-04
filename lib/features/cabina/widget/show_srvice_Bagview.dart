import '../../../core/widgets/customButoon.dart';
import '/features/cabina/widget/textfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../../core/utiles/app__colors.dart';
import '../controllers/phone_number_controller.dart';
import 'confirm_request.dart';
import 'container_search.dart';

class TabBarTransform {
  final PhoneNumberController controllerNum = Get.put(PhoneNumberController());
  // final textController = TextEditingController();

  Column tabtransform(
    String text,
    String texthint,
    checkNameTabBar,
  ) {
    return Column(
      children: [
        Center(
          child: customeContainer(
            width: SizeConfig.screenWidth! * 0.8,
            height: controllerNum.numper.value == '77'
                ? SizeConfig.screenHeight! * 0.4
                : SizeConfig.screenHeight! * 0.2,
            containerColor: Colors.white,
            margin: const EdgeInsets.only(),
            child: Column(
              children: [
                Text(text,
                    style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.3)),
                customeContainerTextForm(
                  onChanged: (val) {
                    if (controllerNum.priceController.value.text.isNotEmpty) {
                      final amount =
                          int.parse(controllerNum.priceController.value.text);
                      final netAmount = amount - (amount * 0.156);
                      // final netAmount=amount-(amount*0.156);
                      controllerNum.priceController2.value.text =
                          netAmount.toString();
                    } else {
                      controllerNum.priceController2.value.clear();
                    }
                  },
                  textController: controllerNum.priceController.value,
                  controllerNum: controllerNum,
                  text: texthint,
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: controllerNum.checkNumber(
                        widgetSbafone: AppColors.sabafonUnselectedLabelColor,
                        widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
                        widgetYemenMobile:
                            AppColors.yemenMobileUnselectedLabelColor,
                        widgetYou: AppColors.youBackGroundSelectedLabelColor,
                        widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
                        widgetWay: AppColors.wayUnselectedLabelColor,
                        widget: AppColors.kPrimaryColor,
                      ),
                    ),
                    onPressed: () {
                      controllerNum.priceController.value.clear();
                      if (controllerNum.priceController.value.text.isNotEmpty) {
                        final amount =
                            int.parse(controllerNum.priceController.value.text);
                        final netAmount = amount - (amount * 0.156);
                        // final netAmount=amount-(amount*0.156);
                        controllerNum.priceController2.value.text =
                            netAmount.toString();
                      } else {
                        controllerNum.priceController2.value.clear();
                      }
                    },
                  ),
                  suffixIcon: const Icon(
                    Icons.attach_money,
                  ),
                  margin: EdgeInsets.only(
                    // top: SizeConfig.defaultSize! * 1.5,
                    right: SizeConfig.defaultSize! * 2,
                    left: SizeConfig.defaultSize! * 2,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
                if (controllerNum.numper.value == '77')
                  Column(
                    children: [
                      Text(
                        'المبلغ الصافي بعد خصم الضرائب',
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize! * 1.3,
                        ),
                      ),
                      customeContainerTextForm(
                          controllerNum: controllerNum,
                          text: ' صافي المبلغ',
                          margin: EdgeInsets.only(
                            // top: SizeConfig.defaultSize! * 1.5,
                            right: SizeConfig.defaultSize! * 2,
                            left: SizeConfig.defaultSize! * 2,
                          ),
                          // prefixIcon: Icons.cancel,
                          suffixIcon: const Icon(
                            Icons.attach_money,
                          ),
                          readOnly: true,
                          textController: controllerNum.priceController2.value),
                    ],
                  )
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (controllerNum.numper.value == '77')
            //   customButoon(
            //     function: () {},
            //     child: Text(
            //       'استعلام',
            //       style: TextStyle(
            //           fontSize: SizeConfig.defaultSize! * 1.2,
            //           color: Colors.white),
            //     ),
            //     height: SizeConfig.screenHeight! * 0.06,
            //     background: controllerNum.chackenum(
            //       widgetSbafone: AppColors.sabafonUnselectedLabelColor,
            //       widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
            //       widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
            //       widgetYou: AppColors.youBackGroundSelectedLabelColor,
            //       widgetWay: AppColors.wayUnselectedLabelColor,
            //       widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
            //       widget: AppColors.kPrimaryColor,
            //     ),
            //   ),
            // if (controllerNum.numper.value == '77')
            //   SizedBox(
            //     width: SizeConfig.screenWidth! * 0.18,
            //   ),
            customButoon(
              function: () {
                Get.dialog(
                  ConfirmRequst(
                    categorie: controllerNum.priceController.value.text,
                    price: controllerNum.priceController.value.text,
                    checkProcess: checkNameTabBar,
                  ),
                );
              },
              height: SizeConfig.screenHeight! * 0.06,
              background: controllerNum.checkNumber(
                widgetSbafone: AppColors.sabafonUnselectedLabelColor,
                widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
                widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
                widgetYou: AppColors.youBackGroundSelectedLabelColor,
                widgetWay: AppColors.wayUnselectedLabelColor,
                widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
                widget: AppColors.kPrimaryColor,
              ),
              child: Text(
                'تسديد',
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.4,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ],
    );
  }
}
