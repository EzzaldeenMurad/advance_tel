import '../../../core/utiles/assets_manager.dart';
import '/features/cabina/widget/textfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../../core/utiles/app__colors.dart';
import '../controllers/phone_number_controller.dart';

class ContentsContainerSearch {
  final PhoneNumberController controllerNum = Get.put(PhoneNumberController(), permanent: true);

  Widget contentscontainersearch() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Column(
        //   children: [
        // Obx(
        //   () => Text(
        //     'بوابة الشمال',
        //     style: TextStyle(
        //       fontSize: SizeConfig.defaultSize! * 1.2,
        //       color: controllerNum.chackenum(
        //         widgetSbafone: AppColors.sabafonUnselectedLabelColor,
        //         widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
        //         widgetYemenMobile:
        //             AppColors.yemenMobileUnselectedLabelColor,
        //         widgetYou: AppColors.youBackGroundSelectedLabelColor,
        //         widget: AppColors.kPrimaryColor,
        //       ),
        //     ),
        //   ),
        // ),
        // Obx(
        //   () => Switch(
        //     value: controllerNum.isnorthGate.value,
        //     onChanged: (value) {
        //       controllerNum.northGate(value);
        //     },
        //   ),
        // ),
        //   ],
        // ),
        Obx(
          () => IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.contact_phone_rounded,
                size: SizeConfig.defaultSize! * 3,
                color: controllerNum.checkNumber(
                  widgetSbafone: AppColors.sabafonUnselectedLabelColor,
                  widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
                  widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
                  widgetYou: AppColors.youBackGroundSelectedLabelColor,
                  widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
                  widgetWay: AppColors.wayUnselectedLabelColor,
                  widget: AppColors.kPrimaryColor,
                ),
              )),
        ),
        customeContainerTextForm(
          suffixIcon: Obx(
            () => controllerNum.checkNumber(
              widgetSbafone: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  ImgAssets.sapa_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widgetYemenNet: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  ImgAssets.net_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widgetYemenMobile: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  ImgAssets.yemne_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widgetYou: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  ImgAssets.you_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widgetAdenNet: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  ImgAssets.aden_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widgetWay: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  ImgAssets.way_image,
                  height: 25,
                  width: 25,
                ),
              ),
              widget: const Icon(Icons.phone),
            ),
          ),
          controllerNum: controllerNum,
          textController: controllerNum.textPhoneController.value,
          text: 'رقم الهاتف',
          margin: EdgeInsets.only(
            // top: SizeConfig.defaultSize! * 1.08,
            //  right: SizeConfig.defaultSize! * 2,
            left: SizeConfig.defaultSize! * 2.3,
          ),
          border: InputBorder.none,
          // suffixIcon: ,

          prefixIcon: controllerNum.count.value != 0
              ? Obx(() => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: controllerNum.checkNumber(
                            widgetSbafone:
                                AppColors.sabafonUnselectedLabelColor,
                            widgetYemenNet:
                                AppColors.yemenNetUnselectedLabelColor,
                            widgetYemenMobile:
                                AppColors.yemenMobileUnselectedLabelColor,
                            widgetYou:
                                AppColors.youBackGroundSelectedLabelColor,
                            widgetAdenNet:
                                AppColors.adenNetUnselectedLabelColor,
                            widgetWay: AppColors.wayUnselectedLabelColor,
                            widget: AppColors.kPrimaryColor,
                          ),
                        ),
                        onPressed: () {
                          controllerNum.textPhoneController.value.clear();
                          controllerNum.count.value = 0;
                        },
                      ),
                      // Obx(
                      //   () => Text(controllerNum.count.value.toString()),
                      // )
                    ],
                  ))
              : null,

          onChanged: (val) {
            controllerNum.isVisiblety(val);
            controllerNum.counter(val);
            // if (val.length == 9) {
            //   // controllerNum.textController.value.
            //   // ;
            // }
          },
          maxLength: 9,
          focusNode: controllerNum.focusNode.value,
          //   buildCounter: (context, {currentLength=6, isFocused=true, maxLength=9}) {
          //     return Text(currentLength.toString());
          //   },
        ),
      ],
    );
  }
}
