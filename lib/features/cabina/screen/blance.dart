// import 'package:fawry_cach/core/widgets/generate_token.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../core/constans/size_config.dart';
// import '../../../core/services/yem/api_bill_balance_service.dart';
// import '../../../core/utiles/app__colors.dart';
// import '../../../core/widgets/customButoon.dart';
// import '../controler/search_number.dart';
// import '../controler/yem/bill_balance_controller.dart';
// import '../widget/confirm_request.dart';
// import '../widget/container_search.dart';
// import '../widget/textfiled.dart';

// AppColors colors = AppColors();

// class Balance extends StatefulWidget {
//   Balance({super.key});

//   @override
//   State<Balance> createState() => _BalanceState();
// }

// class _BalanceState extends State<Balance> {
//   final SearchNum controllerNum = Get.put(SearchNum(), permanent: true);

//   final textController = TextEditingController();
//   // BillBalanceController yemBillBalanceController =
//       // Get.put(BillBalanceController());

  

//   @override
//   Widget build(BuildContext context) {
//     controllerNum.priceController2.value.text =
//         controllerNum.priceController.value.text;
//     final token = GenerateToken(transid: 88, mobile: '774029471');

    
//     SizeConfig().init(context);
//     return Column(
//       children: [
//         Center(
//           child: customeContainer(
//             width: SizeConfig.screenWidth! * 0.8,
//             height: controllerNum.numper.value == '77'
//                 ? SizeConfig.screenHeight! * 0.4
//                 : SizeConfig.screenHeight! * 0.2,
//             containerColor: Colors.white,
//             margin: const EdgeInsets.only(
//                 // top: SizeConfig.defaultSize! * 1,
//                 // left: SizeConfig.defaultSize! * 2.8,
//                 // right: SizeConfig.defaultSize! * 3.2,
//                 ),
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.end,
//               // crossAxisAlignment: CrossAxisAlignment.end,

//               children: [
//                 SizedBox(
//                   height: SizeConfig.defaultSize! * 1,
//                 ),
//                 Text('ادخل المبلغ',
//                     style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.3)),
//                 customeContainerTextForm(
//                   textController: controllerNum.priceController.value,
//                   controllerNum: controllerNum,
//                   text: ' المبلغ',
//                   prefixIcon: Icons.cancel,
//                   suffixIcon: Icons.attach_money,
//                   margin: EdgeInsets.only(
//                     // top: SizeConfig.defaultSize! * 1.5,
//                     right: SizeConfig.defaultSize! * 2,
//                     left: SizeConfig.defaultSize! * 2,
//                   ),
//                 ),
//                 SizedBox(
//                   height: SizeConfig.defaultSize! * 2,
//                 ),
//                 // if (controllerNum.numper.value == '77')
//                 // Column(
//                 //   children: [
//                 //     Text(
//                 //       'المبلغ الصافي بعد خصم الضرائب',
//                 //       style: TextStyle(
//                 //         fontSize: SizeConfig.defaultSize! * 1.3,
//                 //       ),
//                 //     ),
//                 //     customeContainerTextForm(
//                 //         controllerNum: controllerNum,
//                 //         textController: controllerNum.priceController2.value,
//                 //         text: ' صافي المبلغ',
//                 //         margin: EdgeInsets.only(
//                 //           // top: SizeConfig.defaultSize! * 1.5,
//                 //           right: SizeConfig.defaultSize! * 2,
//                 //           left: SizeConfig.defaultSize! * 2,
//                 //         ),
//                 //         suffixIcon: Icons.attach_money,
//                 //         readOnly: true),
//                 //   ],
//                 // )
//               ],
//             ),
//           ),
//         ),
//         SizedBox(
//           height: SizeConfig.screenHeight! * 0.06,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (controllerNum.numper.value == '77')
//               customButoon(
//                 function: () {},
//                 child: Text(
//                   'استعلام',
//                   style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.2),
//                 ),
//                 height: SizeConfig.screenHeight! * 0.06,
//                 background: controllerNum.chackenum(
//                   widgetSbafone: AppColors.sabafonUnselectedLabelColor,
//                   widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
//                   widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
//                   widgetYou: AppColors.youBackGroundSelectedLabelColor,
//                   widget: AppColors.kPrimaryColor,
//                 ),
//               ),
//             if (controllerNum.numper.value == '77')
//               SizedBox(
//                 width: SizeConfig.screenWidth! * 0.18,
//               ),
//             customButoon(
//               function: () {

               
//                 Get.dialog(ConfirmRequst(
//                   categorie: controllerNum.priceController.value.text,
//                   price: controllerNum.priceController.value.text,
//                   checkProcess: 'balance',
//                 ));
//               },
//               height: SizeConfig.screenHeight! * 0.06,
//               background: controllerNum.chackenum(
//                 widgetSbafone: AppColors.sabafonUnselectedLabelColor,
//                 widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
//                 widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
//                 widgetYou: AppColors.youBackGroundSelectedLabelColor,
//                 widget: AppColors.kPrimaryColor,
//               ),
//               child: Text(
//                 'تسديد',
//                 style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.2),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
