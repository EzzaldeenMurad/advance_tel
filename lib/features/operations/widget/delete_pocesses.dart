import 'package:flutter/cupertino.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';

class DeleteProcesses extends StatefulWidget {
  const DeleteProcesses({super.key});

  @override
  State<DeleteProcesses> createState() =>
      _ConfirmRequstState();
}

class _ConfirmRequstState extends State<DeleteProcesses> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return customDailogResult(
        text: 'لا يمكنك حذف هذه العمليه لانها جاهزه في النظام ');
  }
}
