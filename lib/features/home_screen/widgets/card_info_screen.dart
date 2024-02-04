
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../cabina/screen/pyment_cabin.dart';

Flexible card_info_account(String type, String typeserv, IconData icon,Color color) {
  return Flexible(
    flex: 1,
    fit: FlexFit.tight,
    child: InkWell(
      onTap: () => Get.to(const PymentCabin()),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
         
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
          Icon(icon ,size: SizeConfig.defaultSize!*5,),
            // Image.asset(img, height: 24 ,color: Colors.black,),
            SizedBox(
              height: SizeConfig.screenHeight!*0,
            ),
            Text(
              type,style: const TextStyle(  fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
              // style: ApptextStyle.MY_SERVICES,
              // style: header,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              typeserv,
              style: const TextStyle(  fontFamily: "Poppins",
             // fontWeight: FontWeight.bold
              ),
        
              // style: label,
            ),
          ],
        ),
      ),
    ),
  );
}
 
