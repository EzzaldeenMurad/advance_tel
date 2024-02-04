import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../utiles/constants.dart';

import '../../../../features/cabina/models/mtn_model/mtn_offer_model.dart';

// import '../../../features/cabina/model/mtn/mtn_bill_categories_model.dart';




class MtnApiOfferService {
  static Future<dynamic> fetchQueryOffer({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    // String? amount,
    // required String action,
    // String? offerid,
    String? num,
  
  }) async {
    String apiUrl = "${apiUrlAlkahtani}mtnoffer?&userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";
try {
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final queryList = MtnOfferModel.fromJson(data);
      // print(jsonDecode(response.data));
      return queryList;
    } else {
      return 'status Code ${response.statusCode}';
    }
      } catch (e) {
      if (e is DioError) {
        if (e.response != Null) {
          return 'خطاء في الاستعلام ';//return 'خطاء في ${e.response.toString()}';
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
