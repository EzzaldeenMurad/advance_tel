import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showToastMessage({required String message}) {
 return Fluttertoast.showToast(
    msg: message,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.red,
  );
}
// 
void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('This is a snack bar'),
    ),
  );
}