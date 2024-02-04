import 'package:flutter/material.dart';

Container customButoon(
        {required Widget child,
        required Function() function,
        double? width,
        double? height,
        EdgeInsetsGeometry? margin,
        Color? background,
        double radius = 10.0}) =>
    Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(onPressed: function, child: child),
    );
