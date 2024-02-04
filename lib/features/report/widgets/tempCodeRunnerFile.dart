// ignore_for_file: must_be_immutable

import '../../operations/operations.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controler/reborts_controllar.dart';
import 'custum_continer_text+icon.dart';

class PageView_Taber1 extends StatefulWidget {
  const PageView_Taber1({super.key});

  @override
  State<PageView_Taber1> createState() => _PageView_Taber1State();
}

// ignore: camel_case_types
class _PageView_Taber1State extends State<PageView_Taber1> {
  ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          custum_continer_text_icon(
              text: "التسديدات",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الشرائح",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الحوالات المرسلة",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الحوالات المستلمة",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          // custum_continer_text_icon(
          //     text: "كوت واي فاي", context: context,text_nomber: "0",  nextPage: const MyNextPage()),
          // custum_continer_text_icon(
          //     text: "مشتريات المتجر", text_nomber: "0", context: context, nextPage: const MyNextPage()),
          // custum_continer_text_icon(
          //     text: "بنك الارقام",text_nomber: "0",  context: context, nextPage: const MyNextPage()),
          //     custum_continer_text_icon(
          //     text: "اخرى", text_nomber: "0", context: context, nextPage: const MyNextPage()),
        ],
      ),
    );
  }
}

///

class PageViewTaber extends StatelessWidget {
  PageViewTaber({super.key});
  ReportConttrollar reportConttrollar = Get.put(ReportConttrollar());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          custum_continer_text_icon(
              text: "التسديدات",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الشرائح",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الحوالات المرسلة",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          custum_continer_text_icon(
              text: "الحوالات المستلمة",
              textnumber: "0",
              context: context,
              nextPage: Operations(
                title: 'العمليات',
              )),
          // custum_continer_text_icon(
          //     text: "كوت واي فاي",text_nomber: "0",  context: context, nextPage: const MyNextPage()),
          // custum_continer_text_icon(
          //     text: "مشتريات المتجر", text_nomber: "0", context: context, nextPage: const MyNextPage()),
          // custum_continer_text_icon(
          //     text: "بنك الارقام",text_nomber: "0",  context: context, nextPage: const MyNextPage()),
          //     custum_continer_text_icon(
          //     text: "اخرى",text_nomber: "0",  context: context, nextPage: const MyNextPage()),
        ],
      ),
    );
  }
}
