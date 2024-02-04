// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../features/authentecation/controllers/auth.dart';
import '../../features/cabina/controllers/adenet_controller/adenet.dart';
import '../../features/cabina/controllers/mtn/mtn_bill_balance_controller.dart';
import '../../features/cabina/controllers/mtn/mtn_bill_categories_controller.dart';
import '../../features/cabina/controllers/mtn/mtn_gomla_controller.dart';
import '../../features/cabina/controllers/mtn/mtn_offer_controller.dart';
import '../../features/cabina/controllers/operation_status/operation_status_controller.dart';
import '../../features/cabina/controllers/phone_number_controller.dart';
import '../../features/cabina/controllers/saba_controller/saba_controller.dart';
import '../../features/cabina/controllers/why/bill_why_controller.dart';
import '../../features/cabina/controllers/yem/bill_balance_controller.dart';
import '../../features/cabina/controllers/yem/bill_offer_controller.dart';
import '../../features/cabina/controllers/yem/yem_gomla_controller.dart';
import '../../features/cabina/controllers/yemen_post_controller/yemen_post.dart';
import '../../features/operations/controllers/operation_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => SearchController(), fenix: true);
    Get.put(Auth());
    Get.put(OperationStatusController());
    Get.put(PhoneNumberController());
    Get.put(AdenetController());
    Get.put(MtnBillCategoriesController());
    Get.put(BillBalanceController());
    Get.put(YemGomlaController());
    Get.put(MtnGomlaController());
    Get.put(BillOfferController());
    Get.put(MtnOfferController());
    Get.put(SabaController());
    Get.put(MtnBillBalanceController());
    Get.put(YemenPostController());
    Get.put(BillWhyController());
    Get.put(OperationController());
    Get.lazyPut(() => OperationStatusController());
  }
}
