import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yemen_post_model/yemen_post.dart';
import '../../../utiles/constants.dart';




class ApiYemenPost {
  static Future<dynamic> fetchYemenPost({
    required String userId,
    required String mobile,
    required String transId,
    required String token,
    String? amount,
    String? type,
  }) async {
    final apiUrl = "${apiUrlAlkahtani}post?action=bill&userid=$userId&mobile=$mobile&transid=$transId&token=$token&amount=$amount&type=$type";
try {
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final YemenPostModel queryList = YemenPostModel.fromJson(data);
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
