import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';

// ignore: camel_case_types
class Dilaog_powers extends StatefulWidget {
  const Dilaog_powers({super.key});

  @override
  State<Dilaog_powers> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<Dilaog_powers> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return customDailogResult(
      text:
          "لم يتم منح الوصول بعد"
    );
  }
}
