import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';

// FEE0BA
Container customeBouqets(
        {final String? price,
        String? offerName,
        String? paymentType, // نوع الدفع
        String? subscriptionType, // نوع الاشتراك
        String? validity, // الصلاحية
        String? minutes, // الدقائق
        String? sms, // الرسائل
        String? internet, // الانترنت
        String? companyName}) =>
    Container(
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: const Color(0xffFEE0BA),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(2, 2),
              blurRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          Container(
            child: Column(
              children: [
                Text(
                  offerName!,
                  style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.6,
                      fontWeight: FontWeight.w900,
                      color: const Color.fromARGB(255, 116, 32, 26)),
                  textAlign: TextAlign.end,
                ),
                Text(
                  paymentType ?? '',
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.4,
                  ),
                ),
                Visibility(
                  visible: companyName == "yemen mobile" ? true : false,
                  child: Text(
                    subscriptionType ?? '',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 1.2,
                        color: Colors.grey),
                  ),
                ),
                Text(
                  price!,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: SizeConfig.defaultSize! * 2.5,
                    color: Colors.blue,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2, 2),
                        blurRadius: 3, // نصف قطر ضبابية الشادو
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /////////

          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (companyName == "yemen mobile")
                  Column(
                    children: [
                      const Icon(Icons.schedule),
                      Text(
                        validity ?? '',
                        style:
                            TextStyle(fontSize: SizeConfig.defaultSize! * 1.5),
                      )
                    ],
                  ),
                if (companyName == "yemen mobile")
                  Container(
                    height: SizeConfig.screenHeight! * 0.08,
                    width: 1,
                    color: Colors.grey,
                  ),
                Column(
                  children: [
                    const Icon(Icons.phone),
                    Text(
                      minutes ?? '',
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.5),
                    )
                  ],
                ),
                Container(
                  height: SizeConfig.screenHeight! * 0.08,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Icon(Icons.message),
                    Text(
                      sms ?? '',
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.5),
                    )
                  ],
                ),
                Container(
                  height: SizeConfig.screenHeight! * 0.08,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Icon(Icons.language),
                    Text(
                      internet ?? '',
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.5),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
