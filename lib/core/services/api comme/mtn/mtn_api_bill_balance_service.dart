import 'dart:convert';

import 'package:dio/dio.dart';


import '../../../../features/cabina/models/mtn_model/mtn_bill_balance_model.dart';
import '../../../utiles/constants.dart';


// const apiUrlYemenMobile = 'https://taiztel.yemoney.net/api/yr/';

class MtnApiBillBalanceService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
    String? type,
    final String israsid = '1',
  }) async {
    String apiUrl = "${apiUrlAlkahtani}mtn?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num&type=$type&israsid=$israsid";

    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final  queryList = MtnBillBalanceModel.fromJson(data);
      // print(jsonDecode(response.data));
      return queryList;
    } else {
       throw Exception('Failed to load data');
    }
     
  }
}


