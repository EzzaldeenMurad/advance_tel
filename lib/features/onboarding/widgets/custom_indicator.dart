// import 'package:dots_indicator/dots_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({Key? key, required this.dotIndex}) : super(key: key);
  final int? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: const DotsDecorator(
        color: Colors.black,
        activeColor: Colors.white,
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
      ),
      dotsCount: 3,
     position:dotIndex! ,
    );
  }
}
