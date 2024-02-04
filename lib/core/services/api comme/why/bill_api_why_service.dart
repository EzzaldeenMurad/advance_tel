import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/why_model/bill_why_model.dart';
import '../../../utiles/constants.dart';

class ApiBillWhy {
  static Future<dynamic> fetchBillWhy(
      {required String userId,
      required String mobile,
      required String transId,
      required String token,
      String? num}) async {
    final apiUrl =
        "${apiUrlAlkahtani}why?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&num=$num";

    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final BillWhyModel queryList = BillWhyModel.fromJson(data);
      // print(jsonDecode(response.data));
      // print(queryList.resultCode);
      return queryList;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
