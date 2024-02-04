import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkInternetConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    return false; // لا يوجد اتصال بالإنترنت
  } else {
    return true; // يوجد اتصال بالإنترنت
  }
}
