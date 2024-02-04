import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/appbar.dart';
import 'custome_bond.dart';

class BondReport extends StatelessWidget {
  const BondReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: "سندات الصرف",
          iconData: Icons.arrow_back_rounded,
          onPressed: () {
            Get.back();
          },
        ),
        body: customeBondReport(context));
}}

// import 'package:fawry_cach/features/cabina/widget/gg.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../core/constans/size_config.dart';
// import '../../../../core/widgets/appbar.dart';
// import 'custome_bond.dart';

// class BondReport extends StatelessWidget {
//   const BondReport({Key? key});

//   @override
//   Widget build(BuildContext context) {
//      SizeConfig().init(context);
//     return Scaffold(
//       appBar: CustomAppBar(
//         text: "سندات الصرف",
//         iconData: Icons.arrow_back_rounded,
//         onPressed: () {
//           Get.back();
//         },
//       ),
//       body: Stack(
//         children: [
//           custome_bond_report(context), // استدعاء واجهة المستخدم الخاصة بـ custome_bond_report هنا
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child:  NoInternetConnectionMessage(
            
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }