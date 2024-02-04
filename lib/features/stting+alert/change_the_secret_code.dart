import '../../core/widgets/customButoon.dart';
import 'package:flutter/material.dart';
import '../../core/utiles/size_config.dart';
import '../../core/widgets/coustom_textfiled.dart';

// ignore: camel_case_types
class ChangeTheSecretCode extends StatefulWidget {
  const ChangeTheSecretCode({super.key});

  @override
  State<ChangeTheSecretCode> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<ChangeTheSecretCode> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length != 6) {
      return 'Please enter a valid 6-digit password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
        insetPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            padding: const EdgeInsets.only(top: 30),

            height: SizeConfig.screenHeight! * 0.6,
            width: SizeConfig.screenWidth! * 0.8,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تغير الرمز السري",
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    customTextFiledd(
                      suffixIcon: const Icon(Icons.done),
                      text1: '  الرمز السري القديم',
                       controller: _oldPasswordController,
                obscureText: true,
                validator: _validatePassword,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))), text: '',
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    customTextFiledd(
                      suffixIcon: const Icon(Icons.done),
                      text: ' الرمز السري الجديد',
                         controller: _newPasswordController,
                obscureText: true,
                validator: _validatePassword,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))), text1: '',
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    customTextFiledd(
                      suffixIcon: const Icon(Icons.done),
                      text: "تاكيد الرمز السري",
                       controller: _confirmPasswordController,
                obscureText: true,
                validator: (value) {
                  if (value != _newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return _validatePassword(value);
                },
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))), text1: '',
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.1,
                    ),
                    customButoon(
                        background: Colors.blue,
                        width: SizeConfig.screenWidth! * 0.4,
                        child: const Text(" حفظ"),
                        function: () {})
                  ]),
            )));
  }
}
