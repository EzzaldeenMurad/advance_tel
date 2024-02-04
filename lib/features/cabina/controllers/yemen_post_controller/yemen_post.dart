import 'package:get/get.dart';

import '../../../../core/services/api comme/yemen_post.dart/yemen_post.dart';
import '../phone_number_controller.dart';

class YemenPostController extends GetxController {
  // final query = YemenPostModel().obs;

  final PhoneNumberController phoneNumberController = Get.find();

  Future<dynamic> getYemenPost({transId, token, price, type}) async {
    final query = await ApiYemenPost.fetchYemenPost(
        userId: '18714',
        mobile: phoneNumberController.textPhoneController.value.text,
        transId: transId.toString(),
        token: token,
        amount: price,
        type: type);
    return query;
  }

  // void getYemenPost({function}) async {
  //  var resultDesc =await function;
  //   print(resultDesc.runtimeType);
  //   (resultDesc is String)
  //       ? resultResponce.value = await function
  //       : query.value = await function;
  //       print(query.value.resultCode);
  //   // var a = await Function;
  // }
}
