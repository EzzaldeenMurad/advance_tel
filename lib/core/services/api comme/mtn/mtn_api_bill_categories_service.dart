import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../utiles/constants.dart';
import '../../../../features/cabina/models/mtn_model/mtn_bill_categories_model.dart';

class MtnApiBillCategoriesService {
  static Future<dynamic> fetchMtnApiBillCategories({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? amount,
    String? type,
  }) async {
    String apiUrl = "${apiUrlAlkahtani}mtn?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$amount&type=$type";

    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final queryList = MtnBillCategoriesModel.fromJson(data);
      // print(jsonDecode(response.data));
      Dio().close(force: true);
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
