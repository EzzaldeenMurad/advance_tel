import 'dart:convert';



import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yem_model/query_ offers_model.dart';
import '../../../utiles/constants.dart';

class QueryOffers {
  static Future<dynamic> fetchQueryOffers({
    required String userId,
    required String mobile,
    required String transId,
    required String token,
  }) async {
    final apiUrl = "${apiUrlAlkahtani}yem?action=queryoffer&userid=$userId&mobile=$mobile&transid=$transId&token=$token";
try {
    final response =  await  Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final QueryOffersModel offerList = QueryOffersModel.fromJson(data);
      // print(data);
      return offerList;
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