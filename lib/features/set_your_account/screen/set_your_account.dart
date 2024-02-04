import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';


import '../widgets/view_all_bank_in_home.dart';

class SetYourAccount extends StatefulWidget {
  const SetYourAccount({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SetYourAccount> {
  //get leftWidget => null;
  Widget body_set_your_account() {
    return (
         Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
      SizedBox(
        height: SizeConfig.screenHeight! * 0.1,
      ),
      Center(
        child: CircleAvatar(
            radius: SizeConfig.defaultSize! * 4,
            child: Icon(
              Icons.person,
              size: SizeConfig.defaultSize! * 6.5,
            )),
      ),
      SizedBox(
        height: SizeConfig.defaultSize! * 0.1,
      ),
      Text(
        "غذي حسابك بنفسك عبر البنوك والصرافات",
        style: TextStyle(
            fontSize: SizeConfig.defaultSize! * 2.2, color: Colors.white),
      ),
      
      Padding(
        padding: const EdgeInsets.all(10.0),

        child: Container(
        //  height: SizeConfig.screenHeight!*00.6,
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0))),
          child: View_All_Bank_In_Home(),
          
        ),
      )
    ]));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(children: [body_set_your_account()]));
  }
}
