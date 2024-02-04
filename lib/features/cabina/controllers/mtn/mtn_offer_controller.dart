import 'package:get/get.dart';
// import '../../model/mtn/mtn_bill_categories_model.dart';
import '../../../../core/services/api comme/mtn/mtn_api_offer_service.dart';
import '../../models/mtn_model/mtn_offer_model.dart';
import '../phone_number_controller.dart';

class MtnOfferController extends GetxController {
  final query = MtnOfferModel().obs;
  RxString resultResponce = ''.obs;
  final PhoneNumberController phoneNumberController = Get.find();

  Future<MtnOfferModel> getOffer({transId, token, price, type}) async {
    query.value = await MtnApiOfferService.fetchQueryOffer(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
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
