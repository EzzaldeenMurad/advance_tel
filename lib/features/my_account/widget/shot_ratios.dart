
import 'package:flutter/material.dart';
import '../../../core/utiles/assets_manager.dart';
import '../../../core/utiles/size_config.dart';

import 'custom_ratios.dart';

Container Shot_Ratios() {
  return Container(
    width: SizeConfig.screenWidth! * 1,
    height: SizeConfig.screenHeight! * 0.5,
    margin: EdgeInsets.only(
      left: SizeConfig.defaultSize! * 1.5,
      right: SizeConfig.defaultSize! * 1.5,
    ),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
            padding: EdgeInsets.only(
                right: SizeConfig.defaultSize! * 1.5,
                top: SizeConfig.defaultSize! * 1),
            child: Text(" نسب التسديدات",
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 2.1,
                ))),
        Divider(
          height: SizeConfig.defaultSize! * 1,
          thickness: 2.5,
          indent: 8,
          endIndent: 0,
          color: Colors.grey,
        ),
        Expanded(
          child:Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               CustomRatios(
                text: 'سبافون',
              amg: ImgAssets.sapa_image,
                text1: "%0",
              ),
              const CustomRatios(
                text: 'YUO ',
               amg: ImgAssets.you_image,

                text1: "%0",
              ),
                const CustomRatios(
                text: 'يمن مبوبايل ',
               amg: ImgAssets.yemne_image,

                text1: "%0",
              ),
             
          
              ],),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   CustomRatios(
                text: 'يمن نت ',
               amg: ImgAssets.net_image,

                text1: "%0",
              ),
               CustomRatios(
                text: 'واي  ',
               amg: ImgAssets.way_image,

                text1: "%0",
              ),
               CustomRatios(
                text: 'عدن نت ',
               amg: ImgAssets.aden_image,

                text1: "%0",
              ),
              
         
              ],)
         
          ],)

        ),
      ],
    ),
  );
}
