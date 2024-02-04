
import 'package:flutter/material.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import '../widgets/account_validity.dart';
import '../widgets/information_accuont_admen.dart';


class AdmenAccunt extends StatefulWidget {
  const AdmenAccunt({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AdmenAccunt> {
  //get leftWidget => null;
  Widget bodymyaccont() {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(height: SizeConfig.screenHeight! * 0.1),
      const InformationAccuontAdmen(),
      SizedBox(height: SizeConfig.screenHeight! * 0.01),
      Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 184, 177, 177),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0)),
                ),
        child: Column(
          children: [AdmenAccount_validity()],
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
