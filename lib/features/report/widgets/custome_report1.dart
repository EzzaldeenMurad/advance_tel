
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/widgets/customButoon.dart';
import '../controler/reborts_controllar.dart';
import '../controler/sersh.dart';
import 'dailog/dailog_account.dart';



  Column custome_report1(BuildContext context) {
    Date datee = Get.put(Date());
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.defaultSize! * 0.5, left: 0.5, right: 1),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            customButoon(
              radius: 0,
              background: AppColors.kPrimaryColor,
              height: SizeConfig.screenWidth! * 0.12,
              width: SizeConfig.screenWidth! * 0.478,
              child: Text(
              "الحساب",style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 2.1,)
              ),
              function: () {
                Get.dialog(const DailogMainAccount());
              },
            ),
            customButoon(
              radius: 0,
              background: AppColors.kPrimaryColor,
              height: SizeConfig.screenWidth! * 0.12,
              width: SizeConfig.screenWidth! * 0.478,
              child: Text(
               "اسامة عادل عبده",style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 2.1,)
              ),
              function: () {
                Get.dialog(MySearchPage());
              },
            ),
      
          ]),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.01),
        Container(
          height: SizeConfig.screenHeight! * 0.09,
          padding: EdgeInsets.only(
            right: SizeConfig.defaultSize! * 0.4,
          ),
          color: const Color.fromARGB(255, 212, 209, 200),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.picture_as_pdf,
                    size: SizeConfig.defaultSize! * 2.5,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'عرض PDF',
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize! * 2),
                          ),
                          content: SizedBox(
                            //  height: 200,
                            height: SizeConfig.screenHeight! * 0.2,
                            width: SizeConfig.screenWidth! * 0.2,
                            child: Center(
                              child: Icon(Icons.picture_as_pdf,
                                  size: SizeConfig.defaultSize! * 7),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.065,
                  width: SizeConfig.screenWidth! * 0.2,
                  child: ElevatedButton(
                    
                    style:  ElevatedButton.styleFrom(
                      backgroundColor: AppColors.kPrimaryColor
                    ),
                    child: Text(
                    "تقرير",style: TextStyle(
                      
                      fontSize: SizeConfig.defaultSize! * 2,
                    color: Colors.white,)
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 212, 209, 200)),
                  onPressed: () =>datee. showStartDatePicker(context),
                  child: Text(
                  ' ${datee.formatter.format(datee.startDate.value)}',style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.8,color: Colors.black
                   ) ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 212, 209, 200),
                  ),
                  onPressed: () =>datee.showEndDatePicker(context),
                  child: Text(
                   ' ${datee.formatter.format(datee.endDate.value)}',style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 1.8,color: Colors.black)
                  ),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
