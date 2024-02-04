import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import 'custom_edite.dart';

class UpdateLoginNameAdmen extends StatefulWidget {
  const UpdateLoginNameAdmen({super.key});

  @override
  State<UpdateLoginNameAdmen> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<UpdateLoginNameAdmen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return custom_edite(Titel: "Update login name", text: "User neme"
        // "Update login name"," User neme ",
        );
  }
}
