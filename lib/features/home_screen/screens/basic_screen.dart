
// import 'package:fawry_cach/core/utiles/app__colors.dart';
// import 'package:flutter/material.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';


// import '../../settings/screens/settings.dart';
// import 'home_screen.dart';
// import 'package:get/get.dart';

// class BaseScreen extends StatefulWidget {
//   const BaseScreen();

//   @override
//   _BaseScreenState createState() => _BaseScreenState();
// }

// class _BaseScreenState extends State<BaseScreen> {
//  int _pageIndex = 0;

//   final items = const [
//     Icon(Icons.home, size: 30,),
//     Icon(Icons.contact_page_sharp, size: 30,),
//     Icon(Icons.text_fields, size: 30,),
//     Icon(Icons.chat, size: 30,)
//   ];
//     int index = 0;

//    List<Widget> _pages = <Widget>[
//     HomeScreen(),
//     Setting(),
    
 

//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_pageIndex ],
// bottomNavigationBar: CurvedNavigationBar(
//     backgroundColor: AppColors.navy,
// color: Colors.white,
//         items: items,
//         // index: index,
//         index: _pageIndex,
        
//         onTap: (_pageIndex){
//           setState(() {
//             // index = selctedIndex;
//             index = _pageIndex ;
//             switch(index) {
//               case 0:
              
//                 break;
//               case 1:
//                 Get.to(Setting());
//                 break;
//               // case 2:
//               //   Get.to(Setting());
//               //   break;
//             }
//           });
          
//         },
//         height: 70,
//         // backgroundColor: Colors.transparent,
//         animationDuration: const Duration(milliseconds: 300),
//         // animationCurve: ,
//       ),
      
//     );
//   }
// }
