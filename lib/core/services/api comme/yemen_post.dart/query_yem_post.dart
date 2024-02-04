import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../features/cabina/models/yemen_post_model/query_yemen_post.dart';

import '../../../utiles/constants.dart';

class ApiQueryYemenPost {
  static Future<dynamic> fetchQueryYemenPost({
    required String userId,
    required String mobile,
    required String transId,
    required String token,
    String? type,
  }) async {
    final apiUrl =
        "${apiUrlAlkahtani}post?action=query&userid=$userId&mobile=$mobile&transid=$transId&token=$token&type=$type";
try {
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      // print(jsonDecode(response.data)['resultCode']);
      final data = jsonDecode(response.data);
      final QueryYemenPostModel queryList = QueryYemenPostModel.fromJson(data);
      print(jsonDecode(response.data));
      print(queryList.resultCode);
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
