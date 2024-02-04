import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custome_conteneie_for_view.dart';
import 'custome_dilaog_powers.dart';
import 'custome_row.dart';

class Personal_Information extends StatelessWidget {
  const Personal_Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Custome_Conteneie_For_View(
          title: "صلاحيات الحساب",
          color: Colors.white,
          margin: 1.50,
          showTitle: true,
          showDivider: true,
          listt: [
            IconTextListWidget(
              icon1: Icons.camera_roll_sharp,
              text: "صلاحية الوكيل",
              onTap: () {
                // showDialog(
                //     context: context, builder: (context) => const Dilaog_powers());
                Get.dialog(const Dilaog_powers());
              },
            ),
            IconTextListWidget(
              icon1: Icons.store,
              text: "صلاحية التاجر",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const Dilaog_powers());
              },
            ),
            IconTextListWidget(
              icon1: Icons.shop,
              text: "صلاحية الفرع",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const Dilaog_powers());
              },
            ),
            IconTextListWidget(
              icon1: Icons.app_blocking,
              text: "صلاحية تطبيقي",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const Dilaog_powers());
              },
            ),
            IconTextListWidget(
              icon1: Icons.whatshot,
              text: "صلاحية واتسابي",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const Dilaog_powers());
              },
            ),
            IconTextListWidget(
              icon1: Icons.group,
              text: "صلاحية الموزع",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const Dilaog_powers());
              },
            ),
          ])
    ]);
  }
}
