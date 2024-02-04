// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../models/categorie_fawry.dart';




// class SearchNum extends GetxController {
//   final showPassword = true.obs;
//   RxString nameCompany = ''.obs;
//   RxList filterCategorieFawry = [].obs;
//   RxBool isVisible = false.obs;
//   // RxBool isYemenMobile = false.obs;
//   // RxBool isSbafone = false.obs;
//   RxString numper = ''.obs;
//   final isnorthGate = false.obs;
//   final focusNode = FocusNode().obs;
//   final textController = TextEditingController().obs;
//   final priceController = TextEditingController().obs;

//   northGate(value) {
//     isnorthGate.value = value;
//   }

//   chackenum({
//     widgetYemenMobile,
//     widgetSbafone,
//     widgetYou,
//     widgetYemenNet,
//     widget,
//   }) {
//     if (numper.value == '73') {
//       nameCompany.value = 'you';
//       return widgetYou;
//     } else if (numper.value == '77' || numper.value == '78') {
//       nameCompany.value = 'yemenMobile';
//       return widgetYemenMobile;
//     } else if (numper.value == '71') {
//       nameCompany.value = 'Sabafon';
//       return widgetSbafone;
//     } else if (numper.value == '04') {

//       nameCompany.value = 'yemenNet';
//       return widgetYemenNet;
//     } else {
//       isVisible.value = false;
//       return widget;
//     }
//   }

//   // fiterCompany() {
//   //   filterCategorieFawry.assignAll(categorieFawry
//   //       .where((item) => item.nameCompany.contains(nameCompany.value)));
//   // }

//   chacken(String val) {
//     isVisible.value = val.isNotEmpty;
//     if (val.isNotEmpty && val.length >= 2) {
//       numper.value = val.substring(0, 2);
//       chackenum();
//       //  if( textController.value.text.length==9)
//       //  {
//       //      SystemChannels.textInput.invokeMethod('TextInput.hide');
//       //  }
//     } else {
//       isVisible.value = false;
//     }
//   }

//   String hidePassword(String password) {
//     return '*' * password.length;
//   }
// }
