import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/operation_status/operation_status_model.dart';
import '../../../utiles/constants.dart';

class OperationApiStatusService {
  static Future<dynamic> fetchQueryBalance({
    required String userId,
    String? mobile,
    required String? transId,
    required String? token,
  }) async {
    String apiUrl = "${apiUrlAlkahtani}info?userid=$userId&mobile=$mobile&transid=$transId&token=$token&action=status";
    try {
      final response = await Dio().get(apiUrl);
      if (response.statusCode == 200) {
        // print(jsonDecode(response.data)['resultCode']);
        final data = jsonDecode(response.data);
        final queryList = OperationStatusModel.fromJson(data);
        print(jsonDecode(response.data));
        return queryList;
      } else {
        return 'status Code ${response.statusCode}';
      }
    } catch (e) {
      if (e is DioError) {
        if (e.response != Null) {
          // return 'خطاء في الاستعلام ';
          // print(e.response.toString());
          // return 'خطاء في ${e.response.toString()}';
        } else {
          return 'خطاء في الاستعلام ';
        }
      } else {
        return throw 'error$e';
      }
    }
  }
}
