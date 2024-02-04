import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  @override
  
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: const OnBoarding_Body( ) ,
    ) ;
  }

}
