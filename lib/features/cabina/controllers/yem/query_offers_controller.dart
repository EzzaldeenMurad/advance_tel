import 'package:get/get.dart';

import '../../models/yem_model/query_ offers_model.dart';

class QueryOffersController extends GetxController {
  final query = QueryOffersModel().obs;
  RxString resultResponce = ''.obs;

  void getQueryOffers({function}) async {
   var resultDesc =await function; 
    print(resultDesc.runtimeType);
    (resultDesc is String)
        ? resultResponce.value = await function
        : query.value = await function;
    print(query.value.resultCode);
    // var a = await Function;
  }
}
