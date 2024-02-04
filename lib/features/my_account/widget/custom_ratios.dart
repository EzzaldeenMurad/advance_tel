import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';

class CustomRatios extends StatelessWidget {
  final String text;
  final String text1;
   final String amg;
  // final Widget? child;

  const CustomRatios({
    Key? key,
    required this.text,
    required this.text1,
    required this.amg,
    // required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.all( SizeConfig.defaultSize!*0.5),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
              style: const TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 2,),
              SizedBox(
              //    height: SizeConfig.screenHeight!*0.2,
              //  width: SizeConfig.screenWidth!*0.2,
                
                  child: ClipOval(
                    child: Image.asset(amg,
                     height: SizeConfig.screenHeight!*0.08,
                   //  width: SizeConfig.screenWidth! *0.3,
                      fit: BoxFit.cover,
                     
                     ),
                  
                ),
              
                
              ),
                const SizedBox(height: 2,),
              Text(text1),
            ],
          ),
        ),
      ),
    );
  }
}
