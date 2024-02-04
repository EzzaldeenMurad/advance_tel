import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'custom_edite.dart';

class UpdatePhoneNumber extends StatefulWidget {
  const UpdatePhoneNumber({super.key});

  @override
  State<UpdatePhoneNumber> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<UpdatePhoneNumber> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return custom_edite(Titel: "Update phone number", text: " enter your number"
        // "Update login name"," User neme ",
        );
  }
}
