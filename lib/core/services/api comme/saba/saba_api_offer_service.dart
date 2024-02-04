import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/saba_model/saba_bill_balance_model.dart';
import '../../../utiles/constants.dart';

class SabaApiOfferService {
  static Future<dynamic> fetchsabaOffer({
    required String userId,
    String? mobile,
    required String transId,
    required String token,
    String? num,
  }) async {
    String apiUrl = "${apiUrlAlkahtani}sabaoffer?userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";

      final response = await Dio().get(apiUrl);
      if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final queryList = SabaUnitModel.fromJson(data);
      print(jsonDecode(response.data));
      return queryList;
      }
      else {
          throw Exception('Failed to load data');
      }

    
  }
}
