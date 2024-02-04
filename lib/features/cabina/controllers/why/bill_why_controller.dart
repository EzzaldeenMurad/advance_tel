import 'package:get/get.dart';

import '../../../../core/services/api comme/why/bill_api_why_service.dart';
import '../../models/why_model/bill_why_model.dart';
import '../phone_number_controller.dart';

class BillWhyController extends GetxController {
  final query = BillWhyModel().obs;
  RxString resultResponce = ''.obs;
  final PhoneNumberController phoneNumberController = Get.find();
  Future<BillWhyModel> getBillWhy({transId, token, price}) async {
    query.value = await ApiBillWhy.fetchBillWhy(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        num: price);
    return query.value;
  }

  // void getBillWhy({function}) async {
  //  var resultDesc =await function;
  //   print(resultDesc.runtimeType);
  //   (resultDesc is String)
  //       ? resultResponce.value = await function
  //       : query.value = await function;
  //       print(query.value.resultCode);
  //   // var a = await Function;
  // }
}
