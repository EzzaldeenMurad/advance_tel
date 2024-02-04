import 'package:get/get.dart';
import '../controllers/yem/query_offers_controller.dart';
import '../../../core/utiles/size_config.dart';
import 'package:flutter/material.dart';
import '../../../core/utiles/app__colors.dart';
import 'show_bottom_sheet.dart';

// ignore: must_be_immutable
class CurrentSub extends StatelessWidget {
  String? offerName;
  String? offerStartDate;
  String? offerEndDate;
  Color? color;

  CurrentSub(
      {super.key, this.offerName, this.offerStartDate, this.offerEndDate, this.color});

  String formatDate(dateString) {
    String text = dateString;
    DateTime dateTime = DateTime(
      int.parse(text.substring(0, 4)), // Year
      int.parse(text.substring(4, 6)), // Month
      int.parse(text.substring(6, 8)), // Day
      int.parse(text.substring(8, 10)), // Hour
      int.parse(text.substring(10, 12)), // Minute
      int.parse(text.substring(12, 14)), // Second
    );
    return '${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}'; // 2023
  }

  @override
  Widget build(BuildContext context) {
    print(offerStartDate!);
    return Container(
      width: SizeConfig.screenWidth! * 0.5,
      // height: SizeConfig.screenHeight! *9,
      decoration: BoxDecoration(
        color: color!, // Colors.green.shade100,
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1),
      ),
      padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * .5,
          right: SizeConfig.defaultSize! * 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.refresh_outlined,
            color: AppColors.yemenMobileBackGroundSelectedLabelColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                offerName!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    color: const Color.fromARGB(255, 24, 96, 155),
                    fontSize: SizeConfig.defaultSize! * 1.8),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${formatDate(offerStartDate)} :الاشتراك',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: SizeConfig.defaultSize! * 1.6,
                      ),
                    ),
                    const TextSpan(
                      text: '\n',
                    ),
                    TextSpan(
                      text: '${formatDate(offerEndDate)} :الانتهاء',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: SizeConfig.defaultSize! * 1.6,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.right,
              ),
            ],
          )
        ],
      ),
    );
  }
}
// Container CurrentSub({
//   String? offerName,
//   String? offerStartDate,
//   String? offerEndDate,
// }) {
//   return

// }

Container CurrentSubscriptions(
    BuildContext context, QueryOffersController queryOffersController) {
  // final QueryOffersController queryOffersController =
  //     Get.put(QueryOffersController(), permanent: true);

  List<Color> colors = [
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
    const Color.fromARGB(58, 157, 204, 242),
    const Color.fromARGB(118, 181, 225, 160),
  ];

  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: AppColors.yemenMobileBackGroundSelectedLabelColor,
            width: SizeConfig.defaultSize! * .4)),
    child: Column(
      children: [
        Container(
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: AppColors.yemenMobileBackGroundSelectedLabelColor,
          ),
          child: Text(
            'الاشتراكات الحالية',
            style: TextStyle(
              color: Colors.red.shade100,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Obx(() => ListView.builder(
              itemCount: queryOffersController.query.value.offers!.length,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final q = queryOffersController.query.value.offers![index];
                return Padding(
                  padding: EdgeInsets.all(SizeConfig.defaultSize! * .8),
                  child: InkWell(
                    child: CurrentSub(
                      offerName: q.offerName,
                      offerStartDate: q.offerStartDate,
                      offerEndDate: q.offerEndDate,
                      color: colors[index],
                    ),
                    onTap: () {
                      Get.back();
                      Get.bottomSheet(ShowBottomeSheet(offerName: q.offerName));
                    },
                  ),
                );
              },
            )),
      ],
    ),
  );
}
