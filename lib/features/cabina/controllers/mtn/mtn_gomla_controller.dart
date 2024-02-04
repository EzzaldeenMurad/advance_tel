import 'package:get/get.dart';
// import '../../model/mtn/mtn_bill_balance_model.dart';
import '../../../../core/services/api comme/mtn/mtn_api_gomla_service .dart';
import '../../models/mtn_model/mtn_gomla_model.dart';
import '../phone_number_controller.dart';

class MtnGomlaController extends GetxController {
  final PhoneNumberController phoneNumberController = Get.find();
  Rx<MtnGomlaModel> query = MtnGomlaModel().obs;

  Future<MtnGomlaModel> getMtnGomlaQuery({transId, token, price}) async {
    query.value = await MtnApiGomlaService.fetchQueryBalance(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        num: price);
    return query.value;
  }

//   void getQuery({function}) async {
//     var h = await function;
//     print(h.runtimeType);
//     (h is String)
//         ? resultResponce.value = await function
//         : query.value = await function;
//   }
}
