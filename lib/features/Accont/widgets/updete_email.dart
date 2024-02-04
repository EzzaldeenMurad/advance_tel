import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'custom_edite.dart';

class UpdateEmeil extends StatefulWidget {
  const UpdateEmeil({super.key});

  @override
  State<UpdateEmeil> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<UpdateEmeil> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return custom_edite(Titel: "Change Emeli", text: " osama2111adel@gmail.com"
        // "Update login name"," User neme ",
        );
  }
}
