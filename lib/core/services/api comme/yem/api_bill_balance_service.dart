import 'dart:convert';
import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yem_model/yem_bill_balance_model.dart';
import '../../../utiles/constants.dart';

class YemApiBillBalanceService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? amount,
    // required BuildContext context,
  }) async {
  
      String apiUrl =
          "${apiUrlAlkahtani}yem?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&amount=$amount";
      final response = await Dio().get(apiUrl);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.data);
        // final BillBalanceModel queryList = BillBalanceModel.fromJson(data);
        final YemBillBalanceModel queryList =
            YemBillBalanceModel.fromJson(data);

        return queryList;
      } else {
        throw Exception('Failed to load data');
        }
   
  }
}
