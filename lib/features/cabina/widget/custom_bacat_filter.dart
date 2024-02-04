// import 'package:fawry_cach/features/cabina/widget/show_bottom_sheet.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../core/constans/size_config.dart';
// import '../controler/filtter.dart';
// import '../controler/search_number.dart';
// import '../models/mtn/mtn_offer_table_model.dart';
// import '../screen/pyment_cabin.dart';
// import 'custom_bouqets.dart';

// class CustomeFilterBouquet extends StatelessWidget {
//   String? title;
//   String? CheckBouqa;

//   final SearchNum controllerNum = Get.put(SearchNum());
//   FilterController filterController = Get.put(FilterController());

//   CustomeFilterBouquet({this.title, this.CheckBouqa});

//   @override
//   Widget build(BuildContext context) {
//     // filterController.showFilter(listMtnOfferTableModel);
//     // controllerNum.fiterCompany(listMtnOfferTableModel, title);
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * .3),
//       decoration: const BoxDecoration(
//           // color: Colors.blue,
//           ),
//       child: ExpansionTile(
//         collapsedBackgroundColor: Colors.yellow,
//         backgroundColor: Colors.white,
//         childrenPadding: EdgeInsets.symmetric(
//             horizontal: SizeConfig.defaultSize! * 1,
//             vertical: SizeConfig.defaultSize! * 1),
//         title: Text(
//           title!,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: SizeConfig.defaultSize! * 1.5,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         // leading: Icon(Icons.mail),
//         trailing: const Icon(Icons.person),
//         controlAffinity: ListTileControlAffinity.leading,
//         children: controllerNum.filterBacat
//             .map(
//               (index) => InkWell(
//                 onTap: (() => Get.bottomSheet(ShowBottomeSheet())),
//                 child: Padding(
//                   padding:
//                       EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
//                   child: SizedBox(
//                       child: customeBouqets(
//                           price: index.price,
//                           title: index.name,
//                           category: '',
//                           card_and_prmga: " شريحة + برمجة",
//                           day: "7 ايام",
//                           message: index.message,
//                           taime: index.call,
//                           internet: index.enternet,
//                           check: CheckBouqa)),
//                 ),
//               ),
//             )
//             .toList(),

//         //  children: List.generate(
//         //   3,
//         //   (index) => Padding(
//         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
//         //     child: SizedBox(
//         //         child: customeBouqets(
//         //             price: '123', title: '123', category: '123')),
//         //   ),

//         // ),
//         // children: List.generate(
//         //   3,
//         //   (index) => Padding(
//         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
//         //     child: SizedBox(
//         //         child: customeBouqets(
//         //             price: '123', title: '123', category: '123')),
//         //   ),
//         // ),

//         // children: List.generate(
//         //   3,
//         //   (index) => Padding(
//         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
//         //     child: SizedBox(
//         //         child: customeBouqets(
//         //             price: '495', title: 'مزايا الاسبوعية ', category: 'دفع مسبق',card_and_prmga: " شريحة + برمجة",day: "7 ايام",message: "150 رسالة",taime: "100 دقيقه",internet: "90 ميجا",check: CheckBouqa)),

//         //   ),
//       ),
//     );
//   }
// }

// // Container customeFilterBouquet(String title,String CheckBouqa,controllerNum) => 


// // Container(
// //       padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * .3),
// //       decoration: const BoxDecoration(
// //           // color: Colors.blue,
// //           ),
// //       child: ExpansionTile(
// //         collapsedBackgroundColor: Colors.yellow,
// //         backgroundColor: Colors.white,
// //         childrenPadding: EdgeInsets.symmetric(
// //             horizontal: SizeConfig.defaultSize! * 1,
// //             vertical: SizeConfig.defaultSize! * 1),
// //         title: Text(
// //           title,
// //           textAlign: TextAlign.center,
// //           style: TextStyle(
// //             fontSize: SizeConfig.defaultSize! * 1.5,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //         // leading: Icon(Icons.mail),
// //         trailing: const Icon(Icons.person),
// //         controlAffinity: ListTileControlAffinity.leading,
// //         children:  listMtnOfferTableModel.map(
// //                   (index) => InkWell(
// //                     onTap: (() => Get.bottomSheet( ShowBottomeSheet())
// //                      //   PymentCabin(),
// //                     ),
// //                     child: Padding(
// //                       padding:
// //                           EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
// //                       child: SizedBox(
// //                           child: customeBouqets(
// //                     price: index.price, title: index.name, category: index.numLink,card_and_prmga: " شريحة + برمجة",day: "7 ايام",message: "150 رسالة",taime: "100 دقيقه",internet: "90 ميجا",check: CheckBouqa)),
// //                     ),
// //                   ),
// //                 )
// //                 .toList(),
          
        
// //         //  children: List.generate(
// //         //   3,
// //         //   (index) => Padding(
// //         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
// //         //     child: SizedBox(
// //         //         child: customeBouqets(
// //         //             price: '123', title: '123', category: '123')),
// //         //   ),
          
// //         // ),
// //         // children: List.generate(
// //         //   3,
// //         //   (index) => Padding(
// //         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
// //         //     child: SizedBox(
// //         //         child: customeBouqets(
// //         //             price: '123', title: '123', category: '123')),
// //         //   ),
// //         // ),

// //         // children: List.generate(
// //         //   3,
// //         //   (index) => Padding(
// //         //     padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * .8),
// //         //     child: SizedBox(
// //         //         child: customeBouqets(
// //         //             price: '495', title: 'مزايا الاسبوعية ', category: 'دفع مسبق',card_and_prmga: " شريحة + برمجة",day: "7 ايام",message: "150 رسالة",taime: "100 دقيقه",internet: "90 ميجا",check: CheckBouqa)),
      
// //         //   ),
      
// //       ),
// //     );
