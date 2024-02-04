// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/widgets/customButoon.dart';

// ignore: camel_case_types
class Change_Password extends StatefulWidget {
  const Change_Password({super.key});

  @override
  State<Change_Password> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<Change_Password> {
  final passwordController = TextEditingController();
  final passwordFocusNod = FocusNode();
  // ignore: prefer_typing_uninitialized_variables
  var isObscured;
  @override
  void initState() {
    super.initState();
    isObscured = true;
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize! * 3,
            vertical: SizeConfig.defaultSize! *0 ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Expanded(
          child: Container(
              padding: const EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: SizeConfig.defaultSize! * 41,
              width: SizeConfig.defaultSize! * 34,
              child: Column(children: [
                Text(
                  "تحديث اسم الدخول",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.lock,color:  AppColors.kPrimaryColor)),
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: isObscured
                            ? Icon(Icons.visibility_off,color:  AppColors.kPrimaryColor,)
                            : Icon(Icons.visibility,color:   AppColors.kPrimaryColor,)),
                    labelText: 'كلمة السر الحاليه',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
                TextFormField(
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.lock,color:  AppColors.kPrimaryColor,)),
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: isObscured
                            ? Icon(Icons.visibility_off,color:  AppColors.kPrimaryColor,)
                            : Icon(Icons.visibility,color:   AppColors.kPrimaryColor,)),
                    labelText: 'توكيد كلمة   السر الجديدة',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
                TextFormField(
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.lock,color:  AppColors.kPrimaryColor,)),
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: isObscured
                            ? Icon(Icons.visibility_off,color:   AppColors.kPrimaryColor,)
                            : Icon(Icons.visibility,color:  AppColors.kPrimaryColor,)),
                    labelText: 'كلمة السر الجديدة',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customButoon(
                      background:  AppColors.kPrimaryColor,
                      width: SizeConfig.screenWidth! * 0.3,
                      child: Text(
                        "الغاء",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        ),
                      ),
                      function: () {
                        Get.back();
                      },
                    ),
                    customButoon(
                      background:  AppColors.kPrimaryColor,
                      width: SizeConfig.screenWidth! * 0.3,
                      child: Text(
                        "تحديث",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.defaultSize! * 2.1,
                        ),
                      ),
                      function: () {
                        Get.back();
                      },
                    )
                  ],
                ),
              ])),
        ));
  }
}
