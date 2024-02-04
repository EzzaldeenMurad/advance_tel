import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../utiles/constants.dart';

import '../../../../features/cabina/models/saba_model/saba_bill_balance_model.dart';
// import '../../models/mtn/mtn_bill_categories_model.dart';

// const apiUrlYemenMobile = 'https://taiztel.yemoney.net/api/yr/';
// const apiUrlYemenMobile = 'https://alkahtani.yemoney.net/api/yr/';

class SabaApiBillService {
  static Future<dynamic> fetchQuerySabaBill({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
  }) async {
    final dio = Dio();
    String apiUrl = "${apiUrlAlkahtani}sabaphone?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";
 
      final response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        // print(jsonDecode(response.data)['resultCode']);
        final data = jsonDecode(response.data);
        final queryList = SabaUnitModel.fromJson(data);
        // print(jsonDecode(response.data));
        // dio.close(force: true);
        return queryList;
      } else {
       throw Exception('Failed to load data');
      }
   
  }
}

// class ApiBillBalanceService {
//   static  getApiUrl({
//     required String userId,
//     String? mobile,
//     required String transId,
//     required String token,
//     String? amount,
//     required String action,
//     String? offerid,
//     String? method,
//   }) {
//     if (action == 'bill')
//       return "yem?action=$action&userid=$userId&mobile=$mobile&transid=$transId&token=$token&amount=$amount";
//     else if (action == 'billoffer')
//       return "yem?action=$action&userid=$userId&mobile=$mobile&transid=$transId&token=$token&offerid=$offerid&method=$method";
//     else if (action == 'query')
//       return "yem?action=$action&userid=$userId&mobile=$mobile&transid=$transId&token=$token";
//   }
