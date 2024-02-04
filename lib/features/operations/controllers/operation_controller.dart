import 'package:get/get.dart';
import '../../../core/services/laravel/api_services_operation.dart';
import '../../authentecation/controllers/auth.dart';
import '../models/operation_model.dart';

class OperationController extends GetxController {
  RxList<OperationModel> operation = <OperationModel>[].obs;
  Rx<OperationModel> postOperation = OperationModel().obs;
  RxInt data = RxInt(0);
  RxString resultDesc = RxString('');
  RxString response = ''.obs;
  final Auth auth = Get.find();

  Future<List<OperationModel>> getOperation() async {
    final token = await auth.getToken();
    operation.value = await ApiServicesOperation.fetchOperation(token: token);
    return operation;
  }

  Future<dynamic> postOperations(
      {required OperationModel postOperation}) async {
    final token = await auth.getToken();
    final responseData = await ApiServicesOperation.postOperation(
        token: token, operationModel: postOperation);
    if (responseData != null) {
      if (responseData.containsKey('data') && responseData['data'] is int) {
        data.value = responseData['data'];
        resultDesc.value = responseData['resultDesc'];
      } else if (responseData.containsKey('trans_id') &&
          responseData['trans_id'] is List &&
          responseData['trans_id'].isNotEmpty) {
        resultDesc.value = responseData['trans_id'][0];
      } else {
        resultDesc.value = 'Unknown response data';
      }
    } else {
      // print(responseData);  
    }
  }
}
