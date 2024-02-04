import 'package:get/get.dart';
// import '../../model/mtn/mtn_bill_balance_model.dart';
import '../../../../core/services/api comme/mtn/mtn_api_bill_balance_service.dart';
import '../../models/mtn_model/mtn_bill_balance_model.dart';
import '../phone_number_controller.dart';

class MtnBillBalanceController extends GetxController {
  final PhoneNumberController phoneNumberController = Get.find();
  final query = MtnBillBalanceModel().obs;

  Future<MtnBillBalanceModel> getBillBalance({transId, token, price,type}) async {
    query.value = await MtnApiBillBalanceService.fetchQueryBalance(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        num: price,
        type: type
        );
       
    return query.value;
  }
}
