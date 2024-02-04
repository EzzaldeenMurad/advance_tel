import 'package:get/get.dart';

import '../../models/yemen_post_model/query_yemen_post.dart';

class QueryYemenPostController extends GetxController {
  final yemenPost = QueryYemenPostModel().obs;
  RxString resultResponce = ''.obs;

  void getQueryYemenPost({function}) async {
   var resultDesc =await function;
    print(resultDesc.runtimeType);
    (resultDesc is String)
        ? resultResponce.value = await function
        : yemenPost.value = await function;
        print(yemenPost.value.resultCode);
    // var a = await Function;
  }
}