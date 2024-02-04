import 'package:get/get.dart';
import '../../../../core/services/api comme/yem/api_bill_balance_service.dart';
import '../../../home_screen/widgets/card_personal_info.dart';
import '../../models/yem_model/yem_bill_balance_model.dart';

class   BillBalanceController extends GetxController {
  Rx<YemBillBalanceModel> query = YemBillBalanceModel().obs;
  RxString resultResponce = ''.obs;

 Future<YemBillBalanceModel> getBillBalance({transId, token, price}) async {
    query.value = await YemApiBillBalanceService.fetchQueryBalance(
      userId: '18714',
      mobile: controllerNum.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      amount: price,
    );
   return  query.value;
  }

  // Future<void> getBillBalance({Function}) async {
  //   var h = await Function;
  //   print(h.runtimeType);
  //   (h is String)
  //       ? resultResponce.value = await Function
  //       : query.value = await Function;
  //   // resultResponce.value = await '';
  //   //   query.value = await BillBalanceModel();
  // }
}
