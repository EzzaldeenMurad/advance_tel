
import 'package:flutter/material.dart';

import '../utiles/app__colors.dart';

AppBar CustomAppBar(
   
  {
  final String? text,
  final IconData? iconData,
   final IconData? iconData1,
  final Function()? onPressed,
  final Function()? onPressed1,
  
}


) {
  return AppBar(
    backgroundColor: AppColors.kPrimaryColor,
    centerTitle: true,
    title: Text(
      text!,
      style: const TextStyle(
        fontFamily: "Poppins",
      ),
    ),
     actions: <Widget>[
          IconButton(
            icon:Icon(
            iconData1, ),
            tooltip: 'Comment Icon',
            onPressed:onPressed1,
          ), //IconButton
        ],
    leading: IconButton(
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      onPressed: onPressed,
    ),
  );
}
