import 'package:flutter/material.dart';


import '../../../core/utiles/size_config.dart';

class CustomContinerButtome extends StatelessWidget {
  const CustomContinerButtome({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
