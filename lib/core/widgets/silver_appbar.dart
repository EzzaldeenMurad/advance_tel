import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../features/cabina/controllers/phone_number_controller.dart';
import '../utiles/size_config.dart';

// class SilverAppBar {

//   Widget selverappbar(
//     String title, [
//     IconData? icon,
//   ]) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverAppBar(
//             floating: true,
//             snap: true,
//             pinned: true,
//             leading: IconButton(
//               onPressed: () {},
//               icon: Icon(icon),
//             ),
//             centerTitle: true,
//             title: checked(true)
//             ),

//         SliverList(delegate: SliverChildListDelegate([
//          Column(children: [

//          ],)
//         ]))
//       ],
//     );
//   }
// }

// Widget checked(bool) {
//   return bool
//       ? Row(
//           children: [
//              SizedBox(width:
//             SizeConfig.screenWidth! * 0.15
//              ),
//             IconButton(
//               icon: Icon(
//                   // controllerNum.showPassword.value
//                   // ? Icons.visibility
//                   Icons.visibility_off),
//               onPressed: () {
//                 // controllerNum.showPassword.toggle();
//               },
//             ),

//             Text(
//                 // controllerNum.showPassword.value
//                 '1000',
//                 // widget.text

//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                      fontSize: SizeConfig.defaultSize! * 1.5,
//                 )),
//             SizedBox(width: SizeConfig.screenWidth! * 0.03),
//             Text('رصيدي',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: SizeConfig.defaultSize! * 1.5,
//                 )),
//           ],
//         )
//       : Text("data");
// }

class SilverAppBarWidget extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final List<Widget>? sliverListChildren;
  final bool checked;
  final bool isRow;
  final Color? backgroundColor;
  const SilverAppBarWidget({
    Key? key,
    this.title,
    this.icon,
    this.sliverListChildren,
    this.checked = true,
    this.isRow = false,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // physics: BouncingScrollPhysics(),
      // shrinkWrap: true,
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          snap: true,
          pinned: true,
          leading: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.toggle() ;
              
              Get.back();
            },
            icon: Icon(icon),
          ),
          backgroundColor: backgroundColor,
          centerTitle: true,
          title: isRow ? checkedWidget() : Text(title!),
        ),
        SliverList(
          delegate: SliverChildListDelegate(sliverListChildren!),
        ),
      ],
    );
  }

  Widget checkedWidget() {
    final PhoneNumberController controllerNum = Get.put(PhoneNumberController(), permanent: true);
    return checked
        ? Row(
            children: [
              SizedBox(width: SizeConfig.screenWidth! * 0.15),
              IconButton(
                icon: Icon(controllerNum.showPassword.value
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  // controllerNum.showPassword.toggle();
                },
              ),
              Text(
                // controllerNum.showPassword.value
                '1000',
                // widget.text
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.defaultSize! * 1.5,
                ),
              ),
              SizedBox(width: SizeConfig.screenWidth! * 0.03),
              Text(
                'رصيدي',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.defaultSize! * 1.5,
                ),
              ),
            ],
          )
        : Text(title!);
  }
//  Widget x( context, IconData icon){
// return  IconButton(
//               icon: Icon(Icons.menu),

//           onPressed: ()=> ZoomDrawer.of(context)!.toggle(),);

// }
}
