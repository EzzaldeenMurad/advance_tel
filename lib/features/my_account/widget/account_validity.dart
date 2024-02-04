import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/widgets/custome_tabel.dart';
import '../../../core/widgets/custome_conteneie_for_view.dart';
import 'custome_row_account_validity.dart';
import 'dailog_cancellaion_and_deletion_of_the_account.dart';
import 'dailog_change_password.dart';
import 'dailog_update_login_name.dart';

Column Account_validity() {
  return Column(children: [
    Custome_Conteneie_For_View(
      title: "المعلومات الشخصية",
      color: Colors.white,
      margin: 1.50,
      showTitle: true,
      showDivider: true,
      listt: [
        Row_Account_validity(
          showButton: true,
          buttonColor:  AppColors.kPrimaryColor,
          buttonText: "تحديث",
          function: () {
            Get.dialog(const UpdateLoginName());
          },
          icon: Icons.person,
          iconColor:    AppColors.kPrimaryColor,
          text1: " اسم الدخول",
          text2: "775261894",
        ),
        Row_Account_validity(
          showButton: true,
          buttonColor:   AppColors.kPrimaryColor,
          buttonText: "تحديث",
          function: () {
            Get.dialog(const Change_Password());
          },
          icon: Icons.security_sharp,
          iconColor:  AppColors.kPrimaryColor,
          text1: "كلمة المرور",
          text2: "***********",
        ),
        Row_Account_validity(
            showButton: true,
            buttonText: "",
            function: () {},
            buttonColor:    AppColors.kPrimaryColor,
            icon: Icons.location_on,
            iconColor:  AppColors.kPrimaryColor,
            text1: " العنوان",
            text2: "تعز"),
        ExpansionTile(
          trailing: Icon(
            Icons.account_box_outlined,
            color:  AppColors.kPrimaryColor,
            size: SizeConfig.defaultSize! * 4.2,
          ),
          title: const Expanded(
            child: Text(
              'الحسابات الفرعية \n معلومات الحساب',
              textAlign: TextAlign.end,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            customTable(
              textHdearOne: "رقم الحساب",
              textHdearTow: "العمولة",
              textHdearThree: "الصيد",
              textBodyOne: "25831",
              textBodyTow: "ريال يمني",
              textBodyThree: "0",
            ),
          ],
        ),
        InkWell(
          onTap: (() {
            Get.dialog(const Cancellaion_And_Deletion_of_the_account());
          }),
          child: Row_Account_validity(
              showButton: true,
              buttonText: "",
              function: () {},
              buttonColor: const Color.fromARGB(255, 30, 50, 233),
              icon: Icons.delete,
              iconColor:   AppColors.kPrimaryColor,
              text1: " الغاء وحذف الحساب",
              text2: "حذف الحساب"),
        )
      ],
    )
  ]);
}
