import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/assets_manager.dart';
import 'login_screen.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegScreen> {
  final passwordFocusNod = FocusNode();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController business_activityController = TextEditingController();
  TextEditingController phone_numberController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  Future addUser({
    required userId,
    required name,
    required business_activity,
    required phone_number,
    required location,
    required email,
    // required status,
    // required userType,
  }) async {
    // DocumentReference collectionRef =
    //     FirebaseFirestore.instance.collection('users').doc(userId);
  //   await collectionRef
  //       .set({
  //         'name': name,
  //         'business_activity': business_activity,
  //         'phone_number': int.parse(phone_number),
  //         'location': location,
  //         'email': email,
  //         'status': '0',
  //         'userType': '0',
  //       })
  //       .then((value) => AwesomeDialog(
  //           context: context, title: 'Error', body: const Text('تم التسجيل بنجاح'))
  //         ..show())
  //       .catchError((error) => AwesomeDialog(
  //           context: context,
  //           title: 'Error',
  //           body: Text('Failed to add user: $error'))
  //         ..show());
  // }

  Future signUp() async {
   
      if (passwordController.text == passwordConfirmController.text &&
          passwordController.text != '') {
        AwesomeDialog(
            context: context, title: 'Error', body: const CircularProgressIndicator())
          .show();

        // await FirebaseAuth.instance.createUserWithEmailAndPassword(
        //   email: emailController.text.trim(),
        //   password: passwordController.text.trim(),
        // );
        // addUser(
        //   userId: FirebaseAuth.instance.currentUser!.uid,
        //   name: nameController.text,
        //   business_activity: business_activityController.text,
        //   phone_number: phone_numberController.text,
        //   location: locationController.text,
        //   email: emailController.text.trim(),
        // );
        Get.to( LoginScreen());
      } 
        // Passwords do not match, handle the error
        // throw Exception('Passwords do not match');
   
      

      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: Text('Sign-up Error'),
      //       content: Text(errorMessage),
      //       actions: [
      //         TextButton(
      //           child: Text('OK'),
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //         ),
      //       ],
      //     );
      //   },
      // );
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
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // User? user = FirebaseAuth.instance.currentUser;
    //  await user!.delete();
    // String userID = user!.email!;
    // print('User ID: $userID');
    SizeConfig().init(context);
    return Scaffold(
        body: Container()
        //  custom_reig_accuont(
    //   fuleName: 'اسم الرباعي مع القب ',
    //   business: 'النشاط التجاري',
    //   phoneNumper: '   رقم الهاتف ',
    //   locatione: '   العنوان ',
    //   nemeLogin: 'اسم المستخدم او رقم الهاتف',
    //   password: 'كلمة السر',
    //   conPassword: 'تاكيد كلمة السر',
    //   context: context,
    // )
    );
  }

  SingleChildScrollView custom_reig_accuont(
      // String?
      {String? fuleName,
      String? business,
      String? phoneNumper,
      String? locatione,
      String? nemeLogin,
      String? password,
      String? conPassword,
      required BuildContext context}) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(color: AppColors.kPrimaryColor),
            width: double.infinity,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.defaultSize! * 3),
                height: SizeConfig.screenHeight! * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.kPrimaryColor),
                child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 3,
                      // right: SizeConfig.defaultSize! * 3
                    ),
                    child: CircleAvatar(
                      radius: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        child: Image.asset(
                          ImgAssets.logo_image,
                          // height: 500,
                          // width:500,
                        ),
                      ),
                    )
                    // child: Text(
                    //   'مرحبا بك\n!انشاء حساب',
                    //   textAlign: TextAlign.end,
                    //   style: TextStyle(
                    //       fontSize: SizeConfig.defaultSize! * 3.6,
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
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, top: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: Text(
                                  "------ البيانات الشخصية  ------",
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize! * 2.1,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.kPrimaryColor),
                                )),
                                TextField(
                                  controller: nameController,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.person_pin_sharp,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                    hintText: fuleName,
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                TextField(
                                  controller: business_activityController,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.store_mall_directory,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                    hintText: business,
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                TextField(
                                  controller: phone_numberController,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.phone_android_rounded,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                    hintText: phoneNumper,
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                TextField(
                                  controller: locationController,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.location_on_outlined,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                    hintText: locatione,
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: Text(
                                    "------ بيان تسجيل الدخول ------",
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize! * 2.1,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                TextField(
                                  controller: emailController,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.mail_lock,
                                        color: AppColors.kPrimaryColor),
                                    hintText: nemeLogin,
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.kPrimaryColor),
                                  ),
                                ),
                                TextField(
                                    controller: passwordController,
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.password,
                                        color: AppColors.kPrimaryColor,
                                      ),
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
                                TextField(
                                    controller: passwordConfirmController,
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    // obscureText: true,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.password,
                                        color: AppColors.kPrimaryColor,
                                      ),
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
                                      hintText: conPassword,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.kPrimaryColor),
                                    )),
                                const SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  child: Container(
                                    height: SizeConfig.defaultSize! * 6,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColors.kPrimaryColor),
                                    child: const Center(
                                      child: Text(
                                        ' تسجيل ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  onTap: () async {
                                    passwordConfirmController.clear();
                                    passwordController.clear();
                                    emailController.clear();
                                    // await signUp();
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      ' هل لديك حساب ؟ قبل الدخول',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Color(0xff281537),
                                      ),
                                    ),
                                  ),
                                  onTap: () async {
                                    // await signUp();

                                    // Get.to(loginScreen(),);
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ]))))
            ])));
  }
}
