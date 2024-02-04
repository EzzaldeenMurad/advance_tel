// ignore_for_file: unrelated_type_equality_checks

import 'package:advance_tel/features/cabina/controllers/offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/services/api comme/yem/api_Query_balance_service.dart';
import '../../../core/services/api comme/yem/api_query_offer_service.dart';
import '../../../core/services/api comme/yem/yem_api_solfa_service.dart';
import '../../../core/utiles/random_transid.dart';
import '../../../core/widgets/future_builder_responce.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';
import '../../../core/widgets/custome_shimmer.dart';
import '../../../core/widgets/generate_token.dart';
import '../controllers/filtter.dart';
import '../controllers/phone_number_controller.dart';
import '../controllers/yem/query_balance_controller.dart';
import '../controllers/yem/query_offers_controller.dart';
import '../controllers/yem/yem_solfa_controller.dart';
import '../models/bacat.dart';
import '../widget/Current_Subscriptions.dart';
import '../widget/bouqet_info.dart';
import '../widget/custom_bouqets.dart';
import '../widget/show_bottom_sheet.dart';

class BacatScreen extends StatefulWidget {
  const BacatScreen({super.key});

  @override
  State<BacatScreen> createState() => _BacatScreenState();
}

class _BacatScreenState extends State<BacatScreen> {
  OfferController offerController = Get.put(OfferController());
  FilterController filterController = Get.put(FilterController());
  YemQueryBalanceController yemQueryBalanceController =
      Get.put(YemQueryBalanceController());
  YemSolfaController yemSolfaController = Get.put(YemSolfaController());
  QueryOffersController queryOffersController =
      Get.put(QueryOffersController());
  final PhoneNumberController phoneNumberController = Get.find();
  // final PhoneNumberController phoneNumberController = Get.put(PhoneNumberController());
  // CustomeFilterBouquet filterCatigory = CustomeFilterBouquet();
  checkResponce(success, faild) {
    if (yemQueryBalanceController.query.value.resultCode == null) {
      return yemQueryBalanceController.resultResponce.value != ''
          ? 's' //showToastMessage(message: '${controller.resultResponce.value}')
          : ''; //CircularProgressIndicator();
    } else if (yemQueryBalanceController.query.value.resultCode == '0') {
      if (yemQueryBalanceController.query.value.resultDesc!
          .contains('under process')) {
        return 'under process';
      } else {
        return '$success';
      }
    } else {
      return '$faild';
    }
  }

  queryOfferCheckResponce({success, faild}) {
    if (yemQueryBalanceController.query.value.resultCode == null) {
      return yemQueryBalanceController.resultResponce.value != ''
          ? 'exeption' //showToastMessage(message: '${controller.resultResponce.value}')
          : 'null'; //CircularProgressIndicator();
    } else if (yemQueryBalanceController.query.value.resultCode == '0') {
      if (yemQueryBalanceController.query.value.resultDesc!
          .contains('under process')) {
        return 'under process';
      } else {
        return '$success';
      }
    } else {
      return '$faild';
    }
  }

  yemSolfaControllerCheckResponce(success, faild) {
    if (yemSolfaController.yemenPost.value.resultCode == null) {
      return yemSolfaController.resultResponce.value != ''
          ? 's' //showToastMessage(message: '${controller.resultResponce.value}')
          : ''; //CircularProgressIndicator();
    } else if (yemSolfaController.yemenPost.value.resultCode == '0') {
      if (yemSolfaController.yemenPost.value.resultDesc!
          .contains('under process')) {
        return 'under process';
      } else {
        return '$success';
      }
    } else {
      return '$faild';
    }
  }

  filter() {
    List<String> catigories;
    return catigories = phoneNumberController.numper.value == '73'
        ? [
            'باقات سوى',
            'باقات مكس ',
            'باقات المكالمات والرسائل',
            'باقات سمارت نت ',
            'باقات فورجي',
          ]
        : phoneNumberController.numper.value == '77' ||
                phoneNumberController.numper.value == '78'
            ? [
                '4G',
                'برمجة',
                'شريحة',
                'فوترة',
                'دفع مسبق',
              ]
            : [
                'جنوب',
                'شمال',
                'فوترة',
                'دفع مسبق',
              ];
  }

  @override
  Widget build(BuildContext context) {
    var randomNumber = randomTransId();

    final token = GenerateToken(
      transid: randomNumber,
      mobile: phoneNumberController.textPhoneController.value.text,
    );
    // print(token);
    if (phoneNumberController.numper.value == '77') {
      queryOffersController.getQueryOffers(
        function: QueryOffers.fetchQueryOffers(
          userId: '18714',
          mobile: phoneNumberController.textPhoneController.value.text,
          transId: randomNumber.toString(),
          token: token,
        ),
      );
    }
    print(token);
    if (phoneNumberController.numper.value == '77') {
      yemQueryBalanceController.getQuery(
        Function: ApiQueryBalanceService.fetchQueryBalance(
          userId: '18714',
          mobile: phoneNumberController.textPhoneController.value.text,
          transId: randomNumber.toString(),
          token: token,
          controller: yemQueryBalanceController,
        ),
      );
    }
    if (phoneNumberController.numper.value == '77') {
      yemSolfaController.getYemenPost(
        function: YemApiSolfaService.fetchQueryBalance(
          userId: '18714',
          mobile: phoneNumberController.textPhoneController.value.text,
          transId: randomNumber.toString(),
          token: token,
        ),
      );
    }
    // final balance = checkResponce(
    //     controller.query.value.balance, controller.query.value.resultCode);
    // final mobileType = checkResponce(
    //   controller.query.value.mobileType == '0' ? 'دفع مسبق' : 'فوترة',
    //   controller.query.value.resultDesc,
    // );

    //
    filterController.showFilter(phoneNumberController.numper.value == '73'
        ? bacatList
        : phoneNumberController.numper.value == '77' ||
                phoneNumberController.numper.value == '78'
            ? bacatList2
            : bacatList3);

    var catigories = phoneNumberController.numper.value == '73'
        ? [
            '4G',
            'فوترة',
            'دفع مسبق',
          ]
        : phoneNumberController.numper.value == '77' ||
                phoneNumberController.numper.value == '78'
            ? [
                '4G',
                'برمجة',
                'شريحة',
                'فوترة',
                'دفع مسبق',
              ]
            : [
                'جنوب',
                'شمال',
                'فوترة',
                'دفع مسبق',
              ];

    SizeConfig().init(context);
    return Expanded(
      child: ListView(physics: const ScrollPhysics(), shrinkWrap: T, children: [
        Column(
          children: [
            if (phoneNumberController.count.value == 9)
              Visibility(
                visible: phoneNumberController.numper == '77' ||
                        phoneNumberController.numper.value == '78'
                    ? true
                    : false,
                child: Column(
                  children: [
                    Obx(
                      () => custome_bacat_y_info(
                        balance: checkResponce(
                            yemQueryBalanceController.query.value.balance,
                            yemQueryBalanceController.query.value.resultCode),
                        mobileType: checkResponce(
                          yemQueryBalanceController.query.value.mobileType ==
                                  '0'
                              ? 'دفع مسبق'
                              : 'فوترة',
                          yemQueryBalanceController.query.value.resultDesc,
                        ),
                        solfa: yemSolfaControllerCheckResponce(
                            yemSolfaController.yemenPost.value.status == 0
                                ? 'الرقم متسلف'
                                : 'الرقم غير متسلف',
                            yemSolfaController.yemenPost.value.resultCode),
                        // isLoading: yemQueryBalanceController.isLoading.value,
                      ),
                    ),
                    SizedBox(height: SizeConfig.defaultSize! * 1.2),
                  ],
                ),
              ),
            // Container(
            //   padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.5),
            //   // width: SizeConfig.screenWidth,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(50),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black.withOpacity(0.2),
            //         spreadRadius: 2,
            //         blurRadius: 3,
            //         offset: const Offset(0, 1),
            //       )
            //     ],
            //   ),
            //   child: Obx(
            //     () => Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: catigories
            //           .map((category) => FilterChip(
            //               backgroundColor: Colors.white,
            //               selectedColor:
            //                   AppColors.youBackGroundSelectedLabelColor,
            //               // checkmarkColor: Colors.yellow,
            //               // padding: EdgeInsets.symmetric(
            //               //     horizontal: SizeConfig.defaultSize! * 1.5),
            //               showCheckmark: false,
            //               selected: filterController.selectedCatigories
            //                   .contains(category),
            //               label: Text(
            //                 category,
            //                 style: TextStyle(
            //                   fontSize: SizeConfig.defaultSize! * 1.5,
            //                 ),
            //               ),
            //               onSelected: (selected) {
            //                 if (selected) {
            //                   filterController.filterAdd(
            //                       category,
            //                       controllerNum.numper.value == '73'
            //                           ? bacatList
            //                           : controllerNum.numper.value == '77' ||
            //                                   controllerNum.numper.value == '78'
            //                               ? bacatList2
            //                               : bacatList3);
            //                 } else {
            //                   filterController.filterRemove(
            //                       category,
            //                       controllerNum.numper.value == '73'
            //                           ? bacatList
            //                           : controllerNum.numper.value == '77' ||
            //                                   controllerNum.numper.value == '78'
            //                               ? bacatList2
            //                               : bacatList3);
            //                 }
            //               }))
            //           .toList(),
            //     ),
            //   ),
            // ),
            // SizedBox(height: SizeConfig.defaultSize! * 1.2),
// SnackBar(content: Text('')),
            if (phoneNumberController.numper.value == '77' ||
                phoneNumberController.numper.value == '78')
              // if (queryOffersController.queryOffers.value.offers!.isNotEmpty)
              if (phoneNumberController.count.value == 9)
                Obx(
                  () => checkResponce2(
                            success:
                                queryOffersController.query.value.resultDesc,
                            faild: queryOffersController.query.value.resultDesc,
                            controller: queryOffersController,
                          ) ==
                          'null'
                      ? CustomeShimmer(
                          Widget: SizeConfig.screenWidth! * 0.9,
                          height: SizeConfig.screenHeight! * 0.2)
                      : queryOffersController.query.value.resultCode == '0'
                          ? CurrentSubscriptions(context, queryOffersController)
                          : queryOffersController.query.value.resultCode ==
                                  '1211'
                              ? customDailogResult(
                                  text: 'حصل خطاء في استعلام الاشتراكات ')
                              : customDailogResult(text: 'error'),
                ),

            SizedBox(height: SizeConfig.defaultSize! * 1.2),
            Obx(() {
              if (offerController.offer.isNotEmpty) {
                return ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: T,
                    itemCount: offerController.offer.length,
                    itemBuilder: (context, index) {
                      final bacat = offerController.offer[index];
                      return InkWell(
                        onTap: (() => Get.bottomSheet(ShowBottomeSheet(
                              offerCode: bacat.offerCode,
                              price: bacat.price,
                              offerName: bacat.offerName,
                            ))),
                        child: Padding(
                            padding:
                                EdgeInsets.all(SizeConfig.defaultSize! * .8),
                            child:
                                //  bacat.companyName == 'يمن موبايل' ||
                                //         bacat.companyName == 'yemen mobile'
                                customeBouqets(
                                    price: bacat.price.toString(),
                                    offerName: bacat.offerName,
                                    paymentType: bacat.paymentType,
                                    subscriptionType: bacat.subscriptionType,
                                    validity: bacat.validity,
                                    sms: bacat.sms,
                                    minutes: bacat.minutes,
                                    internet: bacat.internet,
                                    companyName: bacat.companyName)),
                      );
                    });
              } else {
                return Container();
              }
            })
          ],
        ),
      ]),
    );
  }
}
