import '../../operations/operations.dart';
import '../../my_account/screen/my_account.dart';
import '../../report/screen/report_home.dart';
import '../../report/widgets/Tamminaty.dart';
import '../../settings/screens/settings.dart';
import '/features/cabina/screen/pyment_cabin.dart';
import 'package:flutter/material.dart';

class ItemsMenuScreen {
  late final Icon icon;
  late final Text title;
  late final Widget pag;
  ItemsMenuScreen(this.icon, this.title, this.pag);
}

List<ItemsMenuScreen> drwerItemes = [
  ItemsMenuScreen(
      const Icon(Icons.sd_card_outlined,
      ), const Text("كبينة التسديد"), const PymentCabin()),
  ItemsMenuScreen(const Icon(Icons.book_online), const Text(" التقارير"), const ReportHome()),
  ItemsMenuScreen(const Icon(Icons.person), const Text("حسابي"), const MyAccont()),
  ItemsMenuScreen(
      const Icon(Icons.price_change_sharp), const Text("تاميناتي "), const Tamminaty()),
  ItemsMenuScreen(
      const Icon(Icons.low_priority_sharp),
      const Text(" عملياتي "),
      Operations(
        title: "العمليات",
      )),
  ItemsMenuScreen(const Icon(Icons.settings), const Text("الاعدادات"), const Setting()),

  ItemsMenuScreen(const Icon(Icons.output_rounded), const Text("خرج"), const PymentCabin()),

  // ItemsMenuScreen(Icon(Icons.chat), Text("شات اب"), PymentCabin()),

  // ItemsMenuScreen(Icon(Icons.settings), Text("الاشعارات "), PymentCabin()),
];
