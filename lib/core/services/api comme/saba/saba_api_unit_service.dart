import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/saba_model/saba_bill_balance_model.dart';
import '../../../utiles/constants.dart';

class SabaApiUnitService {
  static Future<Object> fetchsabaUnit({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
  }) async {
    try {
      String apiUrl = "${apiUrlAlkahtani}sabaunits?userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";
      final response = await Dio().get(apiUrl);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.data);
        final SabaUnitModel query = SabaUnitModel.fromJson(data);
        return query;
      } else {
        return 'Request failed with status : ${response.statusCode} .';
      }
    } catch (error) {
      return 'An error occured : $error.';
    }
  }
}
