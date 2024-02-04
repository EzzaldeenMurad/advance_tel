import 'package:get/get.dart';

import '../../models/yem_model/query_balance_model.dart';


class YemQueryBalanceController extends GetxController {
  final query = QueryBalanceModel().obs;
  RxString resultResponce = ''.obs;
  void getQuery({Function}) async {
    var h = await Function;
    print(h.runtimeType);
    (h is String)
        ? resultResponce.value = await Function
        : query.value = await Function;
    // var a = await Function;
  }
}
