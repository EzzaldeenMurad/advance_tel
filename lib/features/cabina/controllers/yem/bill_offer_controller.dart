import 'package:get/get.dart';
import '../../../../core/services/api comme/yem/api_bill_offer_service.dart';
import '../../../home_screen/widgets/card_personal_info.dart';

import '../../models/yem_model/yem_bill_offer_model.dart';
import 'bill_balance_controller.dart';
// import '../../model/saba/bill_offer_model.dart';

class BillOfferController extends GetxController {
  final query = YemBillOfferModel().obs;
  RxString resultResponce = ''.obs;
  BillBalanceController bill = BillBalanceController();
  Future<dynamic> getBillOfferQuery({transId, token, codeBacat, price}) async {
    final queryBill = await bill.getBillBalance(
      price: price,
      token: token,
      transId: transId,
    );

    if (bill.query.value.resultDesc == 'تم التسديد بنجاح') {
      query.value = await ApiBillOfferService.fetchQueryBalance(
        userId: '18714',
        mobile: controllerNum.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        offerid: codeBacat,
        method: 'Renew',
      );
      return query.value;
    }
    return queryBill;
  }
}
