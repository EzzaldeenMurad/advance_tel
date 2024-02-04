import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../utiles/constants.dart';

import '../../../../features/cabina/models/yem_model/yem_bill_offer_model.dart';

class ApiBillOfferService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? offerid,
    String? method,
  }) async {
    String apiUrl = "${apiUrlAlkahtani}yem?action=billoffer&userid=$userId&mobile=$mobile&transid=$transId&token=$token&offerid=$offerid&method=$method";
    try {
      final response = await Dio().get(apiUrl);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.data);
        // if(data.resultCode == '1211') {
        //   return 'حصل خطاء في استعلام الاشتراكات ';
        // }
        // print(data);
        final queryList = YemBillOfferModel.fromJson(data);
        return queryList;
      } else {
        return 'status Code ${response.statusCode}';
      }
    } catch (e) {
      if (e is DioError) {
        if (e.response != Null) {
          return 'خطاء في الاستعلام '; //return 'خطاء في ${e.response.toString()}';
        } else {
          return 'خطاء في الاستعلام ';
        }
      } else {
        return 'error$e';
      }
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
