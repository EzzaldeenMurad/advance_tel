import 'package:flutter/material.dart';

import '../../../core/utiles/size_config.dart';

class CustomItemPageView extends StatelessWidget {
  const CustomItemPageView({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 00.15,
        ),
        CircleAvatar(backgroundColor: const Color.fromARGB(255, 199, 145, 109),radius: 120,
          child: SizedBox(height:  SizeConfig.screenHeight! * 0.4, child: Image.asset(image!)),),
        SizedBox(
          height: SizeConfig.defaultSize! * 1.5,
        ),
        Text(
          title!,
          style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff)),
          textAlign: TextAlign.right,
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 1,
        ),
        Container(
          margin: const EdgeInsets.only(right: 20,left: 20),
          child: Text(
            subTitle!,
            style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
