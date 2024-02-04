import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/network/internet_connection.dart';
import '../../../core/utiles/random_transid.dart';
import '../../../core/widgets/show_toast_message.dart';
import '../../../core/widgets/silver_appbar.dart';
import '../../../core/widgets/containrt_under_sliveapp.dart';
import '../../../core/utiles/app__colors.dart';
import '../../authentecation/controllers/auth.dart';
import '../controllers/phone_number_controller.dart';
import '../widget/container_search.dart';
import '../widget/contents_container_search.dart';
import '../widget/tab_bar.dart';

SilverAppBarWidget slive = const SilverAppBarWidget();

ContinerUnderSliveappBAar container = ContinerUnderSliveappBAar();
ContentsContainerSearch ccs = ContentsContainerSearch();

class PymentCabin extends StatefulWidget {
  const PymentCabin({super.key});

  @override
  State<PymentCabin> createState() => _PymentCabinState();
}

class _PymentCabinState extends State<PymentCabin> {
  final PhoneNumberController phoneNumberController = Get.find();
  // final PhoneNumberController phoneNumberController = Get.put(PhoneNumberController());

  final Auth auth = Get.find();

  isConnectInternet() async {
    bool isConnected = await checkInternetConnection();
    if (!isConnected) {
      showToastMessage(message: '   ...لا يوجد اتصال بالانترنت ');
    }
  }

  @override
  Widget build(BuildContext context) {
    isConnectInternet();
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: () async {
          Get.to(const MyHomePage());
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: _pymentcabina(),
        ));

    //  Scaffold(backgroundColor: Colors.white, body: _pymentcabina());
  }

  Widget _pymentcabina() {
    final randomTransid = randomTransId();

    return CustomScrollView(slivers: <Widget>[
      Obx(() => SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_outlined),
            ),
            backgroundColor: phoneNumberController.checkNumber(
              widgetSbafone: AppColors.sabafonUnselectedLabelColor,
              widgetYemenNet: AppColors.yemenNetUnselectedLabelColor,
              widgetYemenMobile: AppColors.yemenMobileUnselectedLabelColor,
              widgetYou: AppColors.youBackGroundSelectedLabelColor,
              widgetWay: AppColors.wayUnselectedLabelColor,
              widgetAdenNet: AppColors.adenNetUnselectedLabelColor,
              widget: AppColors.kPrimaryColor,
            ),
            title: Row(
              children: [
                SizedBox(width: SizeConfig.screenWidth! * 0.15),
                IconButton(
                    icon: Icon(
                      phoneNumberController.showPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      auth.getBalance();
                      phoneNumberController.showPassword.toggle();
                      // });
                    }),
                Obx(
                  () => Text(
                    phoneNumberController.showPassword.value
                        ? phoneNumberController.hidePassword('00000')
                        : auth.balance.value.toString(), // widget.text
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.defaultSize! * 1.5,
                    ),
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
            ),
          )),
      SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          Column(
            children: [
              Stack(
                children: [
                  Obx(
                    () => container.containerundersliveaapbar(),
                  ),
                  Center(
                    child: customeContainer(
                      width: SizeConfig.screenWidth! * 1,
                      // height: SizeConfig.screenHeight! * 0.1,
                      margin: EdgeInsets.only(
                        top: SizeConfig.screenHeight! * 0.07,
                        left: SizeConfig.defaultSize! * 2,
                        right: SizeConfig.defaultSize! * 2,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),

                      containerColor: Colors.white,

                      child: Column(
                        children: [ccs.contentscontainersearch()],
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Visibility(
                  visible: phoneNumberController.isVisible.value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultSize! * 1,
                        vertical: SizeConfig.defaultSize! * 1),
                    child: const TabBarScreen(),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    ]);
  }
}
