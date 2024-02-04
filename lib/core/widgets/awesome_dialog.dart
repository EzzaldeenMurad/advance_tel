import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

 Future customAwesomeDialog({
  required BuildContext context,
    String? title,
  String? desc,
  required DialogType dialogType,
  AnimType? animType = AnimType.scale,
  void Function()? btnOkOnPress,
  IconData? btnOkIcon,
  String? btnOkText,
  Color? btnOkColor,
}) =>
    AwesomeDialog(
      context: context,
      title: title,
      desc: desc,
      dialogType: dialogType,
      animType: animType!,
      showCloseIcon: true,
      btnOkOnPress: btnOkOnPress,
      btnOkIcon: btnOkIcon,
      btnOkColor: btnOkColor,
      btnOkText: btnOkText,
    ).show();
