import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';

class Alart_Diloge_Change_The_Secret_Code extends StatefulWidget {
  const Alart_Diloge_Change_The_Secret_Code({super.key});

  @override
  State<Alart_Diloge_Change_The_Secret_Code> createState() =>
      _ConfirmRequstState();
}

class _ConfirmRequstState extends State<Alart_Diloge_Change_The_Secret_Code> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return customDailogResult(
        text: "طول الرمز السري الحالي يجب ان لا يتجاوز ستة الرقام فقط ");
  }
}
