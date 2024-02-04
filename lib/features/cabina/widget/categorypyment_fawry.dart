import '../models/aden_net_table_model/yem_offer_table_model.dart';
import '../models/mtn_model/mtn_bill_table_model.dart';
import '../models/saba_model/table/saba_bill_table_model.dart';
import '../models/why_model/table/why_bill_table_model.dart';
import '../models/yem_model/yem_bill_table.dart';
import '../models/yemen_post_model/yemen_post_table_model.dart';
import '/features/cabina/widget/pyment_fawry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../controllers/phone_number_controller.dart';

// ignore: must_be_immutable
class CategoriePaymentFawry extends StatelessWidget {
  // final PhoneNumberController controllerNum = Get.put(PhoneNumberController(), permanent: true);
final PhoneNumberController phoneNumberController = Get.find();
  CategoriePaymentFawry({super.key});

  @override
  Widget build(BuildContext context) {
    // controllerNum.fiterCompany();
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.defaultSize! * 1,
        left: SizeConfig.defaultSize! * 1,
      ),
      child: GridView(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          childAspectRatio: (SizeConfig.defaultSize! * 1.05) /
              (SizeConfig.defaultSize! * 1.1),
        ),
        children: phoneNumberController.checkNumber(
          widgetSbafone: listSabaBillTableModel
              .map((e) => PaymentFawry(
                    categorie: e.category,
                    price: e.price,
                  ))
              .toList(),
          widgetYou: listMtnBillTableModel
              .map((e) => PaymentFawry(
                    categorie: e.category,
                    price: e.price,
                  ))
              .toList(),
          widgetYemenMobile: listYemBillModel
              .map((e) => PaymentFawry(
                    categorie: e.category!,
                    price: e.price,
                  ))
              .toList(),
          widgetYemenNet: listYemenPostTableModel
              .map((e) => PaymentFawry(
                    categorie: e.category!,
                    price: e.price,
                  ))
              .toList(),
          widgetWay: listWhyBillTableModel
              .map((e) => PaymentFawry(
                    categorie: e.category,
                    price: e.price,
                  ))
              .toList(),
          widgetAdenNet: categoryData
              .map((e) => PaymentFawry(
                    categorie: e.num,
                    price: e.price,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
