
import 'package:flutter/material.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/custome_shimmer.dart';

Container custome_bacat_y_info({balance, mobileType, solfa}) =>
    Container(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.defaultSize! * .8,
          horizontal: SizeConfig.defaultSize! * .8),
      margin: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 0.15,
          right: SizeConfig.defaultSize! * 0.15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * .8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFEE0BA),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.6),
                    //     offset: Offset(2, 2),
                    //     blurRadius: 3,
                    //   ),
                    // ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "فحص السلفة",
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.3,
                      color: const Color.fromARGB(255, 173, 53, 44),
                    ),
                  ),
                ),
                Text(
                  "نوع الرقم",
                  style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.3,
                      color: const Color.fromARGB(255, 173, 53, 44)),
                ),
                Text(
                  "رصيد الرقم",
                  style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.3,
                      color: const Color.fromARGB(255, 173, 53, 44)),
                )
              ],
            ),
          ),
          Divider(
              endIndent: SizeConfig.defaultSize! * 0.5,
              indent: SizeConfig.defaultSize! * 0.5),
             
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mobileType == ''
                    ? CustomeShimmer(Widget: SizeConfig.defaultSize! * 5.0, height: SizeConfig.defaultSize! * 2.0):
                Text(
                  '$solfa',
                  style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.2,
                      color: const Color.fromARGB(255, 53, 156, 57)),
                ),
                mobileType == ''
                    ? CustomeShimmer(Widget: SizeConfig.defaultSize! * 5.0, height: SizeConfig.defaultSize! * 2.0)
                :Text(
                  '$mobileType',
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.2,
                    color: const Color.fromARGB(255, 12, 62, 104),
                  ),
                ),
                mobileType == ''
                    ? CustomeShimmer(Widget: SizeConfig.defaultSize! * 5.0, height: SizeConfig.defaultSize! * 2.0)
                    : Text(
                        '$balance',
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize! * 1.2,
                          color: const Color.fromARGB(255, 12, 62, 104),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
