import 'package:flutter/material.dart';
import 'custom_select_bank.dart';

Container View_All_Bank_In_Home() {
  return 
        Container(
          
          child: Column( children: [
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Custom_Select_Bank(
              text: "بنك الكريمي ", text1: " بانتبا بخ تثنبمنثتب بعقعهص"),
              ),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Custom_Select_Bank(
              text: "الامتياز  ", text1: " بانتبا بخ تثنبمنثتب بعقعهص"),
              ),
              Padding(
          padding: const EdgeInsets.all(8.0),
          child: Custom_Select_Bank(text: "كاش   ", text1: " بانتبا بخ تثنبمنثتب بعقعهص"),
              ),
              // Custom_Select_Bank(text: " الحزمي ", text1: " بانتبا بخ تثنبمنثتب بعقعهص"),
            ]),
        )
  ;
}
