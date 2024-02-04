import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../../core/utiles/app__colors.dart';

import '../../../core/utiles/assets_manager.dart';
import '../controllers/phone_number_controller.dart';
import 'confirm_request.dart';

AppColors colors = AppColors();

class PaymentFawry extends StatelessWidget {
  // final IconData iconCompany;
  final String categorie;
  final String price;
  // final String duration;

  PaymentFawry({
    super.key,
    // required this.iconCompany,
    required this.categorie,
    required this.price,
    // required this.duration,
  });
  final PhoneNumberController controllerNum = Get.put(PhoneNumberController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        Get.dialog(ConfirmRequst(
          categorie: categorie,
          price: price,
          checkProcess: 'fawry',
        ));
      },
      child: Container(
        margin: EdgeInsets.all(
          SizeConfig.defaultSize! * 0.4,
        ),
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize! * 0.5,
        ),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 179, 179, 179),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
            color: Colors.white),
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth! * 0.23,
              decoration: BoxDecoration(
                color: controllerNum.checkNumber(
                  widgetSbafone: AppColors.sabafonUnselectedLabelColor,
                  widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
                  widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
                  widgetYou: AppColors.youBackGroundSelectedLabelColor,
                  widgetWay: AppColors.wayUnselectedLabelColor,
                  widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
                  widget: Colors.green,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 179, 179, 179),
                    spreadRadius: 0,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       SizedBox(width: SizeConfig.screenWidth!/350,),
                      Container(
                        height:SizeConfig.screenHeight!*0.01,
                        width: SizeConfig.screenWidth!*0.05,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black, width: 1),
                                top: BorderSide(
                                    color: Colors.black, width: 1))),
                      ),
                      Text(
                        "فئة",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 1.5,
                        ),
                      ),
                      Obx(
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
                            borderRadius: const BorderRadius.all(Radius.circular(50)),
                            child: Image.asset(
                              ImgAssets.net_image,
                              height:SizeConfig.screenHeight!*0.04,
                              width: SizeConfig.screenWidth!*0.04,
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
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                    ],
                  ),
                  Text(
                    categorie,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.defaultSize! * 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.02,
            ),
            Column(
              children: [
                Text(
                  "السعر",
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.5,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.5,
                  ),
                ),
              ],
            ),
            // Container(
            //   width: SizeConfig.screenWidth! * 0.23,
            //   height: SizeConfig.screenHeight! * 0.04,
            //   decoration: BoxDecoration(
            //     color: controllerNum.chackenum(
            //       widgetSbafone:    AppColors.sabafonUnselectedLabelColor,
            //       widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
            //       widgetYemenMobile: AppColors.yemenMobileBackGroundColor,
            //       widgetYou: AppColors.youBackGroundSelectedLabelColor,
            //       widget: Colors.green,
            //     ),
            //     borderRadius: const BorderRadius.all(Radius.circular(8)),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Color.fromARGB(255, 179, 179, 179),
            //     spreadRadius: 0,
            //     blurRadius: 2,
            //     offset: Offset(0, 2),
            //   ),
            // ],
            //   ),
            //   child: Text(
            //     duration,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: SizeConfig.defaultSize! * 1.3,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
