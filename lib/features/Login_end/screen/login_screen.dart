// ignore_for_file: unused_element

import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app.dart';
import '../../../core/network/internet_connection.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/assets_manager.dart';
import '../../../core/widgets/dailog/custom_dailog_result.dart';
import '../../authentecation/controllers/auth.dart';
import '../../cabina/controllers/offer_controller.dart';
import 'reig_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _ConfirmRequstState();
}

class _ConfirmRequstState extends State<LoginScreen> {
  final passwordFocusNod = FocusNode();
  final TextEditingController _loginNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final Auth auth = Get.find();
  OfferController offerController = OfferController();
  Future<void> signIn(BuildContext context) async {
    AwesomeDialog(
        context: context,
        title: 'Error',
        body: const Text('An error occurred during sign-in'));
  }

  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء ادخال اسم الدخول';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء ادخال كلمة المرور';
    }
    return null;
  }

void _submitForm() async {
  if (_formKey.currentState!.validate()) {
    bool isConnected = await checkInternetConnection();
    
    if (isConnected) {
      auth.login(credentials: {
        'login_name': _loginNameController.text,
        'password': _passwordController.text
      });

     if (auth.authenticated.value) {
        Get.offAll(() => const MyHomePage());
      } else {
        Get.dialog(customDailogResult(
          text: 'اسم المستخدم او كلمة المرور غير صحيحة',
        ));
      }
    } else {
      Get.dialog(
        customDailogResult(
          text: '...لا يوجد اتصال بالإنترنت',
        ),
      );
    }
  }
}

  var isObscured;
  @override
  void initState() {
    super.initState();
    isObscured = true;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: custom_login(
            email: 'اسم المستخدم او رقم الهاتف',
            password: 'كلمة السر',
            context: context));
  }

  SingleChildScrollView custom_login({
    String? email,
    String? password,
    required BuildContext context,
  }) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(color: AppColors.kPrimaryColor),
            //  height:SizeConfig.screenHeight!* 1,
            width: double.infinity,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * 2,
                ),
                height: SizeConfig.screenHeight! * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.kPrimaryColor
                    // gradient: LinearGradient(colors: [
                    //   Color(0xffB81736),
                    //   Color(0xff281537),
                    // ]),
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 0),
                  child: CircleAvatar(
                    radius: 0,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        ImgAssets.logo_image,
                        // height: 500,
                        // width:500,
                      ),
                    ),
                  ),
                  // child: Text(
                  //   'مرحبا بك\n!تسجيل الدخول',
                  //   textAlign: TextAlign.end,
                  //   style: TextStyle(
                  //       fontSize: 30,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold),
                  // ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Colors.white,
                      ),
                      // height: double.infinity,
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize! * 1.8,
                              right: SizeConfig.defaultSize! * 1.8,
                              top: SizeConfig.defaultSize! * 1),
                          child: Form(
                            key: _formKey,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    controller: _loginNameController,
                                    validator: _validateUsername,
                                    // onSaved: (value) {
                                    //   _password = value;
                                    // },
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    // obscureText: true,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.mail_lock,
                                          color: AppColors.kPrimaryColor),
                                      hintText: email,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.kPrimaryColor),
                                    ),
                                  ),
                                  TextFormField(
                                      controller: _passwordController,
                                      validator: _validatePassword,
                                      // onSaved: (value) {
                                      //   _password = value;
                                      // },
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.security,
                                            color: AppColors.kPrimaryColor),
                                        prefixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isObscured = !isObscured;
                                              });
                                            },
                                            icon: isObscured
                                                ? Icon(
                                                    Icons.visibility_off,
                                                    color:
                                                        AppColors.kPrimaryColor,
                                                  )
                                                : Icon(
                                                    Icons.visibility,
                                                    color:
                                                        AppColors.kPrimaryColor,
                                                  )),
                                        hintText: password,
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.kPrimaryColor),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'نسيت كلمة السر ؟',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Color(0xff281537),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.defaultSize! * 4,
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: SizeConfig.defaultSize! * 6,
                                      width: 300,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: AppColors.kPrimaryColor),
                                      child: const Center(
                                        child: Text(
                                          ' تسجيل دخول',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    onTap: _submitForm,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  InkWell(
                                    child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "لا املك حساب",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "انشاء حساب ",
                                            style: TextStyle(

                                                ///done login page
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Get.to(const RegScreen());
                                    },
                                  ),
                                ]),
                          ))))
            ])));
  }
}
