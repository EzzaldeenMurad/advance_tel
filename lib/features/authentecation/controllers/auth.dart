import 'dart:convert';
import 'package:dio/dio.dart' as Dio;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../../../config/connecion_server/conn_server.dart';
import '../../../core/services/laravel/api_services_user.dart';
import '../models/user.dart';

class Auth extends GetxController {
  final storage = const FlutterSecureStorage();
  final Rx<User> _user = User().obs;
  RxInt balance = 0.obs;
  bool _authenticated = false;
  String _errorMessage = '';

  RxString get errorMessage => _errorMessage.obs;
  RxBool get authenticated => _authenticated.obs;
  Rx<User> get user => _user;

  void login({required Map credentials}) async {
    try {
      final deviceId = await getDeviceId();
      final response =
          await createDio().post('auth/login', data: json.encode(credentials));

      if (response.statusCode == 200) {
        final token = json.decode(response.data);
        String tokenValue = token['token'];
        // Save the token to local storage or secure storage

        if (tokenValue != null) {
          _authenticated = true;
          // Save the token to local storage or secure storage
          await getUserData(tokenValue);
          storeToken(tokenValue);
          // await ApiServicesOperation.fetchOperation(token: tokenValue);
        }
      } else if (response.statusCode == 422) {
        final errorResponse = json.decode(response.data);
        final passwordErrors = _errorMessage = errorResponse['password'];

        if (passwordErrors != null && passwordErrors.isNotEmpty) {
          // Handle password validation errors
          _errorMessage = passwordErrors[0];
        }
      } else if (response.statusCode == 401) {
        final errorResponse = json.decode(response.data);
        // final message = errorResponse['error'];

        _errorMessage = errorResponse['error']; // Set custom error message
      } else {
        // Handle other non-successful status codes
      }
    } catch (e) {
      _authenticated = false;
      print(e.toString());
    }
  }

  // void logout() {
  //   _authenticated = false;
  //   _user.value = User();
  //   // Clear the token from local storage or secure storage
  // }

  Future<void> getUserData(String token) async {
    try {
      final response = await createDio().get(
        'auth/user',
        options: Dio.Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200) {
        final jsonResponse = response.data;
        _user.value = User.fromJson(jsonDecode(jsonResponse.toString()));
        _authenticated = true;
      } else {
        // Handle other non-successful status codes
        print('Error: ${response.statusCode} - ${response.statusMessage}');
      }
      // log(response.toString());
    } catch (e) {
      _authenticated = false;
    }
  }

  Future getBalance() async {
    final token = await getToken();
    final responseData = await ApiServicesUser.apigetBalance(token: token);
    if (responseData != null) {
      balance.value = responseData;
    }
  }

  Future getDeviceId() async {
    String? deviceId;
    try {
      // deviceId = await PlatformDeviceId.getDeviceId;
    } catch (e) {
      print(e.toString());
    }
    return deviceId;
  }

  storeToken(String token) async {
    await storage.write(key: 'auth', value: token);
  }

  Future getToken() async {
    return await storage.read(key: 'auth');
  }

  deleteToken() async {
    await storage.delete(key: 'auth');
  }

  // void logout() async {
  //   _authenticated = false;

  //   await createDio().delete('auth/token',
  //       data: {'deviceId': await getDeviceId()},
  //       options: Dio.Options(headers: {'auth': true}));

  //   this.deleteToken();
  // }
}
