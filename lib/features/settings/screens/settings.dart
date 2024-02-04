import 'package:get/get.dart';

import '../../../app.dart';
import '/features/settings/widgets/custome_list_settings.dart';
import 'package:flutter/material.dart';

// AppBars a=AppBars();
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _MySetting();
}

class _MySetting extends State<Setting> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  @override
  //  Widget _build_setting(){
  //   return

  // }
  Widget build(BuildContext context) {
    //  final appBar = a.myappbar("الاعدادات");

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "  الاعدادات ",
            style: TextStyle(fontSize: 22),
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Get.to(const MyHomePage());
              }),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(children: [
            const SizedBox(
              height: 40,
            ),
            Contents_strings("مشاركة التطبيق", Icons.share),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.subway_rounded),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  " تفعيل البصمه للدخول الى الحساب",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.grey,
                  activeColor: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.qr_code),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  " تفعيل  الرمز السري ",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: isSwitched1,
                  onChanged: (value) {
                    setState(() {
                      isSwitched1 = value;
                    });
                  },
                  activeTrackColor: Colors.grey,
                  activeColor: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Contents_strings(
                "اضافه تاكيد الاجهزه لنفس الحساب", Icons.add_moderator),
            Contents_strings(
                "تاكيد الجهاز عبر الرسائل النصيه الواتساب", Icons.device_hub),
            const SizedBox(
              height: 20,
            ),
            Contents_strings(
                " التقاط باركود جهاز الويب للتاكيد ", Icons.qr_code),
            const SizedBox(
              height: 20,
            ),
            Contents_strings(" تحديث التطبيق  ", Icons.sync_sharp)
          ]),
        ));
  }
}
// Padding buildNotificationOption(bool value) {
//   return Padding(
//     padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
//     child: CupertinoSwitch(
//       activeColor: Colors.blue,
//       trackColor: Colors.grey,
//       value: value,
//     ),
//   );
// }
