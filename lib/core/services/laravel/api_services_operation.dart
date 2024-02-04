import 'dart:convert';
import 'package:dio/dio.dart' as Dio;

import '../../../config/connecion_server/conn_server.dart';
import '../../../features/operations/models/operation_model.dart';

class ApiServicesOperation {
  static Future<List<OperationModel>> fetchOperation({token}) async {
    try {
      final response = await createDio().get(
        'operation',
        options: Dio.Options(headers: {'Authorization': 'Bearer $token'}),
      ); // Replace with your API URL

      final jsonData = jsonDecode(response.data);
      final List<dynamic> jsonList = jsonData['data'];

      final List<OperationModel> operations =
          jsonList.map((json) => OperationModel.fromJson(json)).toList();

      return operations;
    } catch (e) {
      print('Error fetching offers: $e');
      return [];
    }
  }

  static Future<dynamic> postOperation(
      {required OperationModel operationModel, token}) async {
    try {
      final response = await createDio().post('operation',
          data: operationModel.toJson(),
          options: Dio.Options(headers: {
            'Authorization': 'Bearer $token'
          })); // Replace with your actual POST API endpoint
      if (response.statusCode == 200) {
        final jsonData =  json.decode(response.data); 
        return jsonData;
      } else {
        print(response.data);
      }
    } catch (error) {
      print(error.toString());
    }
    return null;
  }
}
