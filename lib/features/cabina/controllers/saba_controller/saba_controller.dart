import 'package:get/get.dart';

import '../../../../core/services/api comme/saba/saba_api_bill_janob_service.dart';
import '../../../../core/services/api comme/saba/saba_api_gomla_service.dart';
import '../../../../core/services/api comme/saba/saba_api_offer_service.dart';
import '../../../../core/services/api comme/saba/saba_api_unit_service.dart';
import '../../../../core/services/api comme/saba/saba_bill_categories_service.dart';
import '../phone_number_controller.dart';

class SabaController extends GetxController {
  final PhoneNumberController phoneNumberController = Get.find();
  // final query = SabaUnitModel().obs;
// ApiResponse apiResponse=ApiResponse();
  Future<dynamic> getSabaUnit({transId, token, price}) async {
    final query = await SabaApiUnitService.fetchsabaUnit(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
    return query;
  }

  Future<dynamic> getSabaGomla({transId, token, price}) async {
    final query = await SabaGomlaService.fetchsabaGomla(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
    return query;
  }
  Future<dynamic> getSabaBill({transId, token, price}) async {
    final query = await SabaApiBillService.fetchQuerySabaBill(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
    return query;
  }
  Future<dynamic> getSabaBillJanob({transId, token, price}) async {
    final query = await SabaApiBillJanobService.fetchsabaJanob(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
    return query;
  }

  Future<dynamic> getSabaOffer({transId, token, price}) async {
    final query = await SabaApiOfferService.fetchsabaOffer(
      userId: '18714',
      mobile: phoneNumberController.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
    );
    return query;
  }
}
