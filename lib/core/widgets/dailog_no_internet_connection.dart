import 'package:flutter/material.dart';
import '../utiles/size_config.dart';
import 'dailog/custom_dailog_result.dart';

class Dailog_No_Internet_Connection extends StatefulWidget {
  const Dailog_No_Internet_Connection({super.key});

  @override
  State<Dailog_No_Internet_Connection> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<Dailog_No_Internet_Connection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return customDailogResult(text: "لا يوجد اتصال بالانترنت");
  }
}
