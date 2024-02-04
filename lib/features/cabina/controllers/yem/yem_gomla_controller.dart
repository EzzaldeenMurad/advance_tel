import 'package:get/get.dart';
import '../../../../core/services/api comme/yem/yem_api_gomla_service .dart';
import '../../../home_screen/widgets/card_personal_info.dart';
import '../../models/yem_model/yem_bill_balance_model.dart';

class YemGomlaController extends GetxController {
  Rx<YemBillBalanceModel> query = YemBillBalanceModel().obs;
  // RxString resultResponce = ''.obs;

  Future<dynamic> getYemGomlaQuery({transId, token, price}) async {
    query.value = await YemApiGomlaService.fetchQueryBalance(
      userId: '18714',
      mobile: controllerNum.textPhoneController.value.text,
      transId: transId.toString(),
      token: token,
      num: price,
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
