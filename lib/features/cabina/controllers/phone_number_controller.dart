import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/mtn_model/mtn_offer_table_model.dart';

class PhoneNumberController extends GetxController {
  final showPassword = false.obs;
  Rx<IconData?> newSuffixIcon = Rx<IconData?>(null);
  RxString nameCompany = ''.obs;
  final filterBacat = <MtnOfferTableModel>[].obs;
  RxBool isVisible = false.obs;
  // RxBool isYemenMobile = false.obs;
  // RxBool isSbafone = false.obs;
  RxString numper = ''.obs;
  final isnorthGate = false.obs;
  final focusNode = FocusNode().obs;
  final textPhoneController = TextEditingController().obs;
  final priceController = TextEditingController().obs;
  final priceController2 = TextEditingController().obs;
  final priceBacatController = TextEditingController().obs;
  RxInt count = 0.obs;

  checkNumber({
    widgetYemenMobile,
    widgetSbafone,
    widgetYou,
    widgetYemenNet,
    widget,
    widgetWay,
    widgetAdenNet,
  }) {
    if (numper.value == '73') {
      nameCompany.value = 'you يو';
      return widgetYou;
    } else if (numper.value == '77' || numper.value == '78') {
      nameCompany.value = 'يمن موبايل';
      return widgetYemenMobile;
    } else if (numper.value == '71') {
      nameCompany.value = 'سبافون';
      return widgetSbafone;
    } else if (numper.value == '04' ||
        numper.value == '01' ||
        numper.value == '03') {
      nameCompany.value = 'يمن نت';
      return widgetYemenNet;
    } else if (numper.value == '70') {
      nameCompany.value = 'واي';
      return widgetWay;
    } else if (numper.value == '79') {
      nameCompany.value = 'عدن نت';
      return widgetAdenNet;
    } else {
      isVisible.value = false;
      if (textPhoneController.value.text.isEmpty) {
        return widget;
      }
    }
    return widget;
  }

  // fiterCompany(listMtnOfferTableModel, categories) {
  //  filterBacat.assignAll(listMtnOfferTableModel
  //     .where((item) => categories.contains(item.catigory))
  //     .toList());
  // }

  // fiterCompany(list, titelBacat) {
  //   int i = 0;
  //   filterBacat.assignAll(list.where((item) {
  //     i++;
  //     return item.catigory.contains(titelBacat[i]);
  //   }));
  // }

  isVisiblety(String val) {
    isVisible.value = val.isNotEmpty;
    if (val.isNotEmpty && val.length >= 2) {
      numper.value = val.substring(0, 2);
      checkNumber();
    } else {
      numper.value = '';
      // chackenum();
      isVisible.value = false;
    }
  }

  northGate(value) {
    isnorthGate.value = value;
  }

  counter(value) {
    count.value = value.length;
  }

  String hidePassword(String password) {
    return '*' * password.length;
  }
}
