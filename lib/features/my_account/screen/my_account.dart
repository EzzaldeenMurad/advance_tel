
import 'package:flutter/material.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import '../widget/account_validity.dart';
import '../widget/personal_information.dart';
import '../widget/shot_ratios.dart';
import '../widget/information_accont.dart';

class MyAccont extends StatefulWidget {
  const MyAccont({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyAccont> {
  //get leftWidget => null;
  Widget bodymyaccont() {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(height: SizeConfig.screenHeight! * 0.1),
      const InformationAccon(),
      SizedBox(height: SizeConfig.screenHeight! * 0.01),
      Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 184, 177, 177),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0)),
                ),
        child: Column(
          children: [Account_validity(), const Personal_Information(), Shot_Ratios()],
        ),
      )
    ]));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
        
        body: Stack(children: [bodymyaccont(),
      ]));
  }
}
