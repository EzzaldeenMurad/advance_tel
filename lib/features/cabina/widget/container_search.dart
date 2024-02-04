// ignore_for_file: file_names

import 'package:flutter/material.dart';

Container customeContainer({
  required Widget child,
  Color? containerColor,
  double? width,
  double? height,
  EdgeInsetsGeometry? margin,
  BoxBorder? border,
  BorderRadiusGeometry? borderRadius =
      const BorderRadius.all(Radius.circular(10)),
}) =>
    Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: containerColor,
          boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 235, 233, 233),
                spreadRadius: 0,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
        ),
        margin: margin,
        width: width,
        height: height,
        child: child);
