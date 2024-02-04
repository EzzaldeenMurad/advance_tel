import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yem_model/query_balance_model.dart';
import '../../../utiles/constants.dart';

const apiUrlYemenMobile = apiUrlAlkahtani;

class ApiQueryBalanceService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? amount,
    // required String action,
    String? offerid,
    String? method,
    controller,
  }) async {
    String apiUrl = "${apiUrlYemenMobile}yem?action=query&userid=$userId&mobile=$mobile&transid=$transId&token=$token";
try {
    final response = await Dio().get(apiUrl);
  //  Obx(() => controller.c(v:false)) ;
    if (response.statusCode == 200) {
      final data = jsonDecode(response.data);
      final QueryBalanceModel queryList = QueryBalanceModel.fromJson(data);
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
