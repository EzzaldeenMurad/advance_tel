import 'dart:convert';
import 'package:dio/dio.dart' as Dio;

import '../../../config/connecion_server/conn_server.dart';
import '../../../features/operations/models/operation_model.dart';

class ApiServicesUser {
  static Future<int?> apigetBalance({String? token}) async {
    try {
      final response = await createDio().get(
        'balance',
        options: Dio.Options(headers: {'Authorization': 'Bearer $token'}),
      );

       if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.data);
        final data = jsonData['data'];
        final resultDesc = jsonData['resultDesc'];
        
        if (data is int) {
          return data;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}