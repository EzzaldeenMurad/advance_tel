import 'package:get/get.dart';

import '../../models/agent/agent_balance_model.dart';

  class AgentBalanceController extends GetxController {
  final query = AgentBalanceModel().obs;
  RxString resultResponce = ''.obs;

  void getQuery({Function}) async {
    var h = await Function;
    print(h.runtimeType);
    (h is String)
        ? resultResponce.value = await Function
        : query.value = await Function;
  }
}
