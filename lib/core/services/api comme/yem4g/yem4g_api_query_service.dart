import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/mtn_model/mtn_bill_categories_model.dart';
import '../../../utiles/constants.dart';






class Yem4gQueryService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? amount,
    // required String action,
    String? offerid,
    String? method,
    String? num,
    String? type,
    final String israsid = '1',
  }) async {
    
    String apiUrl = "${apiUrlAlkahtani}yem4g?mobile=$mobile&transid=$transId&token=$token&userid=$userId&action=query";
try {
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final  queryList = MtnBillCategoriesModel.fromJson(data);
      print(jsonDecode(response.data));
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


