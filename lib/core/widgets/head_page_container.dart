import 'package:flutter/material.dart';

import '../utiles/size_config.dart';

class HeadPageContainer {
  Container headpagecontainer() { 
    return Container(
        width: double.infinity,
        height: SizeConfig.screenHeight! * 0.12,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          //  bottom: Radius.circular(10),
        ),
        color: Colors.red
        // controllerNum.chackenum(
        //   widgetSbafone: sabafonUnselectedLabelColor,
        //   widgetYemenNet: yemenNetUnselectedLabelColor,
        //   widgetYemenMobile: yemenMobileUnselectedLabelColor,
        //   widgetYou: youBackGroundSelectedLabelColor,
        //   widget: Colors.green,

        );
  }
}
