import 'package:get/get.dart';

import '../../../../core/services/api comme/adenet/adenet.dart';
import '../../models/adenet_model/aden_net_model.dart';
import '../phone_number_controller.dart';

class AdenetController extends GetxController {
  final query = AdenetModel().obs;
  RxString resultResponce = ''.obs;
  final PhoneNumberController phoneNumberController = Get.find();
  Future<AdenetModel> getAdenet({transId, token, price}) async {
    query.value = await AdenetService.fetchAdenet(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        num: price);
    return query.value;
  }
}
