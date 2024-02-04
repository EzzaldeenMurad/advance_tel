import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/network/internet_connection.dart';
import '../../../core/utiles/random_transid.dart';
import '../../../core/widgets/future_builder_responce.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';
import '../../../core/widgets/generate_token.dart';
import '../../authentecation/controllers/auth.dart';
import '../../operations/controllers/operation_controller.dart';
import '../../operations/models/operation_model.dart';
import '../controllers/adenet_controller/adenet.dart';
import '../controllers/mtn/mtn_bill_balance_controller.dart';
import '../controllers/mtn/mtn_bill_categories_controller.dart';
import '../controllers/mtn/mtn_gomla_controller.dart';
import '../controllers/mtn/mtn_offer_controller.dart';
import '../controllers/operation_status/operation_status_controller.dart';
import '../controllers/phone_number_controller.dart';
import '../controllers/saba_controller/saba_controller.dart';
import '../controllers/why/bill_why_controller.dart';
import '../controllers/yem/bill_balance_controller.dart';
import '../controllers/yem/bill_offer_controller.dart';
import '../controllers/yem/yem_gomla_controller.dart';
import '../controllers/yemen_post_controller/yemen_post.dart';
import 'custom_table.dart';

// ignore: must_be_immutable
class ConfirmRequst extends StatelessWidget {
  String? categorie;
  String? price;
  String? codeBacat;
  String? checkProcess;
  ConfirmRequst(
      {super.key,
      this.categorie,
      this.price,
      this.checkProcess,
      this.codeBacat});
  final PhoneNumberController phoneNumberController = Get.find();
  final AdenetController adenetController = Get.find();
  final OperationStatusController operationStatusController = Get.find();
  final MtnBillCategoriesController mtnBillCategoriesController = Get.find();
  final BillBalanceController billBalanceController = Get.find();
  final YemGomlaController yemGomlaController = Get.find();
  final MtnGomlaController mtnGomlaController = Get.find();
  final BillOfferController yemBillOfferController = Get.find();
  final MtnOfferController mtnOfferController = Get.find();
  final SabaController sabaController = Get.find();
  final MtnBillBalanceController mtnBillBalanceController = Get.find();
  final YemenPostController yemenPostController = Get.find();
  final BillWhyController billWhyController = Get.find();
  final OperationController operationController = Get.find();
  final Auth authController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double ratio = 0;
    if (phoneNumberController.numper.value == '77' ||
        phoneNumberController.numper.value == '04') {
      ratio = 0;
    } else if (phoneNumberController.numper.value == '71') {
      if (checkProcess == 'balance') {
        ratio = 32.254;
      } else {
        ratio = 2.692;
      }
    } else {
      ratio = 2.655;
    }
    final amount = int.parse(price!);
    final c = amount * ratio;
    final cost = c.toStringAsFixed(2);
    // final netAmount=amount-(amount*0.156);

    return Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: SizeConfig.defaultSize! * 1),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 3),
            height: SizeConfig.defaultSize! * 55,
            width: double.infinity,
            child: Column(
//mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_outlined,
                    size: SizeConfig.defaultSize! * 4,
                    color: Colors.orange,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "_________تاكيد الطلب__________",
                        style: TextStyle(
                            fontSize: SizeConfig.defaultSize! * 2,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "تفاصيل الطلب",
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize! * 1.6,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight! * 0.18,
                            child: customeTable(
                              textHdearThree: 'الخدمة',
                              textHdearTow: 'الصنف',
                              textHdearOne: 'رقم الهاتف',
                              textBodyThree:
                                  phoneNumberController.nameCompany.value,
                              textBodyTow: categorie!,
                              textBodyOne: phoneNumberController
                                  .textPhoneController.value.text,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight! * 0.02,
                          ),
                          Text(
                            "تفاصيل التكلفة ",
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize! * 1.6,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight! * 0.1,
                            child: customeTable(
                              textHdearOne: 'المبلغ',
                              textHdearTow: 'النسبة',
                              textHdearThree: ' التكلفة',
                              textBodyOne: price!,
                              textBodyTow: '%$ratio',
                              textBodyThree: cost.toString(),
                              color: Colors.orange,
                            ),
                          ),
                          // Text(
                          //   " *اجمالي التكلفة الف و خمسمةوثلاثةوعشرون ريال *",
                          //   style: TextStyle(
                          //       fontSize: SizeConfig.defaultSize! * 1.6,
                          //       color: Colors.black),
                          //   textAlign: TextAlign.center,
                          // ),
                          SizedBox(
                            height: SizeConfig.screenHeight! * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  // padding: EdgeInsets.only(
                                  //     left: 15, right: 15, bottom: 10, top: 10),
                                  backgroundColor:
                                      const Color.fromARGB(255, 148, 28, 20),
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.cancel_sharp,
                                  size: 24.0,
                                ),
                                label: const Text(
                                  ' العاء',
                                  // style: TextStyle(fontSize: 15),
                                ),
                              ),
                              // ElevatedButton.icon(
                              //   onPressed: () {},
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: Colors.blue,
                              //   ),
                              //   icon: const Icon(
                              //     Icons.message,
                              //     size: 24.0,
                              //   ),
                              //   label: const Text('عبر الرسائل'), // <-- Text
                              // ),

                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                onPressed: () async {
                                  int transId = randomTransId();

                                  bool isConnected =
                                      await checkInternetConnection();

                                  final token = GenerateToken(
                                      transid: transId,
                                      mobile: phoneNumberController
                                          .textPhoneController.value.text);

                                  Get.back();

                                  if (isConnected) {
                                    Get.dialog(Obx(() {
                                      return showResponce(token, transId);
                                    }));
                                  } else {
                                    Get.dialog(customDailogResult(
                                        text:
                                            '   ...لا يوجد اتصال بالانترنت '));
                                  }
                                },
                                icon: const Icon(
                                  Icons.done_all_rounded,
                                  size: 24.0,
                                ),
                                label: const Text('موفق'), // <-- Text
                              )
                            ],
                          )
                        ]),
                  )
                ])));
  }

  showResponce(token, transId) {
    if (phoneNumberController.numper.value == '77' ||
        phoneNumberController.numper.value == '78') {
      if (checkProcess == 'balance' || checkProcess == 'fawry') {
        return futureBuilderResponce(
          future: billBalanceController.getBillBalance(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'gomla') {
        return futureBuilderResponce(
          future: yemGomlaController.getYemGomlaQuery(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد جملة',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'baqat') {
        return futureBuilderResponce(
          future: yemBillOfferController.getBillOfferQuery(
              price: price, codeBacat: price, token: token, transId: transId),
          price: price,
          serviceName: 'باقات  موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }
    if (phoneNumberController.numper.value == '73') {
      if (checkProcess == 'balance') {
        return futureBuilderResponce(
          future: mtnBillBalanceController.getBillBalance(
              price: price, token: token, transId: transId, type: 'postpaid'),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'fawry') {
        return futureBuilderResponce(
          future: mtnBillCategoriesController.getBillCategories(
              price: categorie,
              token: token,
              transId: transId,
              type: 'postpaid'),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'gomla') {
        return futureBuilderResponce(
          future: mtnGomlaController.getMtnGomlaQuery(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'baqat') {
        return futureBuilderResponce(
          future: mtnOfferController.getOffer(
              price: codeBacat, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }

    if (phoneNumberController.numper.value == '71') {
      if (checkProcess == 'balance') {
        return futureBuilderResponce(
          future: sabaController.getSabaUnit(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'fawry') {
        return futureBuilderResponce(
          future: sabaController.getSabaBill(
              price: categorie, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'janob') {
        return futureBuilderResponce(
          future: sabaController.getSabaBillJanob(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'gomla') {
        return futureBuilderResponce(
          future: sabaController.getSabaGomla(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      } else if (checkProcess == 'baqat') {
        return futureBuilderResponce(
          future: sabaController.getSabaOffer(
              price: codeBacat, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }

    if (phoneNumberController.numper.value == '04') {
      if (checkProcess == 'line') {
        return futureBuilderResponce(
          future: yemenPostController.getYemenPost(
              price: price, token: token, transId: transId, type: 'line'),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }

      if (checkProcess == 'adsl') {
        return futureBuilderResponce(
          future: yemenPostController.getYemenPost(
              price: price, token: token, transId: transId, type: 'adsl'),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }
    if (phoneNumberController.numper.value == '70') {
      if (checkProcess == 'fawry') {
        return futureBuilderResponce(
          future: billWhyController.getBillWhy(
              price: categorie, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }
    if (phoneNumberController.numper.value == '79') {
      if (checkProcess == 'fawry') {
        return futureBuilderResponce(
          future: adenetController.getAdenet(
              price: price, token: token, transId: transId),
          price: price,
          serviceName: 'رصيد موبايل',
          categorie: categorie,
          token: token,
          transId: transId,
          phoneNumberController: phoneNumberController,
        );
      }
    }
    return customDailogResult(text: 'يوجد خطاء بالنظام');
  }
}
