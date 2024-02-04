import '/core/widgets/coustom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utiles/size_config.dart';
import '../../core/widgets/appbar.dart';
import '../../core/widgets/customButoon.dart';

class ConfirmAnewDevice extends StatelessWidget {
  const ConfirmAnewDevice({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      backgroundColor: Colors.grey,
      appBar: CustomAppBar(
        text: "تاكيد الجهاز",
        
        iconData: Icons.arrow_back_rounded,
        onPressed: () {  Get.back();},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                customTextFiledd(
                  text: "",
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ), text1: '',
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.015,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customButoon(
                          radius: 8,
                          background: Colors.blue,
                          height: SizeConfig.screenWidth! * 0.12,
                          width: SizeConfig.screenWidth! * 0.46,
                          child: Text("نسخ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.defaultSize! * 2.1,
                              )),
                          function: () {},
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth! * 0.02,
                        ),
                        customButoon(
                          radius: 8,
                          background: Colors.blue,
                          height: SizeConfig.screenWidth! * 0.12,
                          width: SizeConfig.screenWidth! * 0.46,
                          child: Text("مشاركة ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.defaultSize! * 2.1,
                              )),
                          function: () {},
                        ),
                        // MySearchPage()),
                      ]),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                customTextFiledd(
                  suffixIcon: const Icon(Icons.device_unknown_sharp),
                  text: "رقم الجهاز",
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ), text1: '',
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                customButoon(
                  radius: 8,
                  background: Colors.blue,
                  height: SizeConfig.screenWidth! * 0.12,
                  width: SizeConfig.screenWidth! * 1,
                  child: Text("  اضافة",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.defaultSize! * 2.1,
                      )),
                  function: () {},
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.03,
                ),
                customTextFiledd(
                  suffixIcon: const Icon(Icons.device_unknown_sharp),
                  text: "رقم الجهاز",
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))), text1: '',
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                customTextFiledd(
                  suffixIcon: const Icon(Icons.device_unknown_sharp),
                  text: "رقم الهاتف المسجل في حسابك",
                  fillColor: Colors.white,
                  
                   
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))), text1: '',
                 ),
                 SizedBox(
                  height: SizeConfig.screenHeight! * 0.025,
                ),
                 Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customButoon(
                            radius: 8,
                            background: Colors.blue,
                            height: SizeConfig.screenWidth! * 0.12,
                            width: SizeConfig.screenWidth! * 0.46,
                            child: Text("تأكيد عبر الواتس",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.defaultSize! * 2.1,
                                )),
                            function: () {},
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth! * 0.02,
                          ),
                          customButoon(
                            radius: 8,
                            background: Colors.blue,
                            height: SizeConfig.screenWidth! * 0.12,
                            width: SizeConfig.screenWidth! * 0.46,
                            child: Text("تأكيد عبر الرسائل ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.defaultSize! * 2.1,
                                )),
                            function: () {},
                          ),
                          // MySearchPage()),
                        ]),
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
