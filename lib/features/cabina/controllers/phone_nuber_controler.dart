import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumber extends GetxController {
   Rx<TextEditingController> phone = TextEditingController().obs;
 void setPhone(value) {
    phone.value.text = value;
  }
}
