import 'package:get/get.dart';
// import '../../model/mtn/mtn_bill_categories_model.dart';
import '../../../../core/services/api comme/mtn/mtn_api_bill_categories_service.dart';
import '../../models/mtn_model/mtn_bill_categories_model.dart';
import '../phone_number_controller.dart';

class MtnBillCategoriesController extends GetxController {
  final query = MtnBillCategoriesModel().obs;
  RxString resultResponce = ''.obs;
  final PhoneNumberController phoneNumberController = Get.find();

  Future<dynamic> getBillCategories({transId, token, price, type}) async {
    query.value = await MtnApiBillCategoriesService.fetchMtnApiBillCategories(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        amount: price,
        type: type);
    return query.value;
  }

  // void getQuery({function}) async {
  //   var h = await function;
  //   print(h.runtimeType);
  //   (h is MtnBillCategoriesModel)
  //       ? query.value = await function
  //       : resultResponce.value = await function;

  //     print(query.value.resultDesc);
  // }
}
