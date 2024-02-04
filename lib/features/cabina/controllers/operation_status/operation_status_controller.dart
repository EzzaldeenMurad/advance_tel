import 'package:get/get.dart';

import '../../models/operation_status/operation_status_model.dart';



class OperationStatusController extends GetxController {
  final query = OperationStatusModel().obs;
  RxString resultResponce = ''.obs;

  void getOperationStatus({function}) async {
    var resultDesc = await function;
    print(resultDesc.runtimeType);
    (resultDesc is String)
        ? resultResponce.value = await function
        : query.value = await function;
    print(query.value.resultCode);
    // var a = await Function;
  }
}
