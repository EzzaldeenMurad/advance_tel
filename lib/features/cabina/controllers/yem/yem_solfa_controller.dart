
import 'package:get/get.dart';

import '../../models/yem_model/yem_solfa_model.dart';



class YemSolfaController extends GetxController {
  final yemenPost = YemSolfaModel().obs;
  RxString resultResponce = ''.obs;

  void getYemenPost({function}) async {
   var resultDesc =await function;
    print(resultDesc.runtimeType);
    (resultDesc is String)
        ? resultResponce.value = await function
        : yemenPost.value = await function;
        print(yemenPost.value.resultCode);
    // var a = await Function;
  }
}