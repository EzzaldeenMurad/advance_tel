import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/saba_model/saba_bill_balance_model.dart';
import '../../../utiles/constants.dart';

// import '../../models/mtn/mtn_bill_categories_model.dart';

class SabaGomlaService {
  static Future<dynamic> fetchsabaGomla({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
  }) async {
    String apiUrl =
        "${apiUrlAlkahtani}sabagomla?userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final queryList = SabaUnitModel.fromJson(data);
      // print(jsonDecode(response.data));
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
