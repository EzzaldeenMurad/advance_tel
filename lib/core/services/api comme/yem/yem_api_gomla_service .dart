import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yem_model/yem_bill_balance_model.dart';
import '../../../utiles/constants.dart';

class YemApiGomlaService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
  }) async {
    try {
      String apiUrl =
          "${apiUrlAlkahtani}mobilegomla?userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";
      final response = await Dio().get(apiUrl);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.data);
        final YemBillBalanceModel query = YemBillBalanceModel.fromJson(data);
        return query;
      } else {
        return 'Request failed with status : ${response.statusCode} .';
      }
    } catch (error) {
      return 'An error occured : $error.';
    }
  }
}
