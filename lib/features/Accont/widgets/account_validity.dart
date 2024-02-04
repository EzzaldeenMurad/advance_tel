
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/app__colors.dart';
import 'custome_conteneie_for_admen.dart';
import 'custome_row_account_validity.dart';
import 'dailog_cancellaion_and_deletion_of_the_account.dart';
import 'dailog_change_password.dart';
import 'dailog_update_login_name.dart';
import 'update_phone_number.dart';
import 'updete_email.dart';

Column AdmenAccount_validity() {
  return Column(children: [
    Custome_Conteneie_For_Admen(
      title: "Information Admen",
      color: Colors.white,
      margin: 0,
      showTitle: true,
      showDivider: true,
      listt: [
        Row_Account_Admen_validity(
          showButton: true,
          buttonColor:  AppColors.kPrimaryColor,
          buttonText: "edit",
          function: () {
            Get.dialog(const UpdateLoginNameAdmen());
          },
          icon: Icons.person,
          iconColor:    AppColors.kPrimaryColor,
          text1: "  User Name ",
          text2: "  Osama Adel  ",
        ),
         Row_Account_Admen_validity(
          showButton: true,
          buttonColor:  AppColors.kPrimaryColor,
          buttonText: "edit",
          function: () {
            Get.dialog(const UpdatePhoneNumber());
          },
          icon: Icons.person,
          iconColor:    AppColors.kPrimaryColor,
          text1: "   Phone Number ",
          text2: " 775261894 ",
        ),
          Row_Account_Admen_validity(
          showButton: true,
          buttonColor:  AppColors.kPrimaryColor,
          buttonText: "edit",
          function: () {
            Get.dialog(const UpdateEmeil());
          },
          icon: Icons.person,
          iconColor:    AppColors.kPrimaryColor,
          text1: "  Email",
          text2: "osama2111adel@gmail.com",
        ),
        Row_Account_Admen_validity(
          showButton: true,
          buttonColor:   AppColors.kPrimaryColor,
          buttonText: "edit",
          function: () {
            Get.dialog(const Change_Password_Admen());
          },
          icon: Icons.security_sharp,
          iconColor:  AppColors.kPrimaryColor,
          text1: " password",
          text2: "***********",
        ),
        Row_Account_Admen_validity(
            showButton: true,
            buttonText: "",
            function: () {},
            buttonColor:    AppColors.kPrimaryColor,
            icon: Icons.location_on,
            iconColor:  AppColors.kPrimaryColor,
            text1: " Address",
            text2: "Taiz"),
      
           
        InkWell(
          onTap: (() {
            Get.dialog(const Cancellaion_And_Deletion_of_the_account_Admen());
          }),
          child: Row_Account_Admen_validity(
              showButton: true,
              buttonText: "",
              function: () {},
              buttonColor: const Color.fromARGB(255, 30, 50, 233),
              icon: Icons.delete,
              iconColor:   AppColors.kPrimaryColor,
              text1: "Account Deletion",
              text2: " "),
        ),
           InkWell(
          onTap: (() {
            Get.dialog(const Cancellaion_And_Deletion_of_the_account_Admen());
          }),
          child: Row_Account_Admen_validity(
              showButton: true,
              buttonText: "",
              function: () {},
              buttonColor: const Color.fromARGB(255, 30, 50, 233),
              icon: Icons.logout_rounded,
              iconColor:   AppColors.kPrimaryColor,
              text1: 'Sign Out',
              text2: " "),
        )
      ],
    )
  ]);
}
