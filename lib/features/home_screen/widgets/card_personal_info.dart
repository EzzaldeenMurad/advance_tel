import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../core/utiles/size_config.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/assets_manager.dart';
import '../../../core/utiles/random_transid.dart';
import '../../authentecation/controllers/auth.dart';
import '../../operations/operations.dart';
import '../../cabina/controllers/agent/agent_balance_controller.dart';
import '../../cabina/controllers/phone_number_controller.dart';
import '../../my_account/screen/my_account.dart';

AgentBalanceController agentBalanceController =
    Get.put(AgentBalanceController());
final PhoneNumberController controllerNum =Get.find();
final Auth auth = Get.find();

// File? galleryFile;
class CardPersonAccount extends StatelessWidget {
  final randomNumber = randomTransId();
  final String textToCopy = auth.user.value.id.toString();
  // final key =Auth.getToken();
  CardPersonAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 320,
        width: SizeConfig.screenWidth! * 0.93,
        height: SizeConfig.defaultSize! * 24,
        padding: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(.5),
          //     blurRadius: 2.0, // soften the shadow
          //     spreadRadius: 0.0, //extend the shadow
          //     offset: Offset(
          //       0.9, // Move to right 10  horizontally
          //       0, // Move to bottom 10 Vertically
          //     ),
          //   )
          // ],
          image: DecorationImage(
            image: AssetImage((ImgAssets.end_image)),
            fit: BoxFit.cover,
          ),

          //  color: AppColors.brown,
          //  gradient: const LinearGradient(colors: [
          //                     Color(0xffB81736),
          //                     Color(0xff281537),
          //                   ]),

          // shape: BoxShape.circle,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 2,
          //     blurRadius: 7,
          //     offset: Offset(0, 3),
          //   ),
          // ],

          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Center(
                child: InkWell(
                    onTap: () {
                      Get.to(const MyAccont());
                    },
                    child: CircleAvatar(
                      radius: SizeConfig.defaultSize! * 4.68,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: SizeConfig.defaultSize! * 4.55,
                        backgroundColor: AppColors.colorCardService1,
                        child: Icon(
                          Icons.person,
                          size: SizeConfig.defaultSize! * 7,
                        ),
                      ),
                    )),
              ),
            ),

            // Sized/ox(width: 10,),

            Container(
                child: Column(children: [
              Text(
                auth.user.value.name ?? '',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    // fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        textToCopy,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Clipboard.setData(ClipboardData(text: textToCopy));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('تم نسخ النص')),
                        );
                      },
                      child: const Icon(
                        Icons.copy_all_outlined,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: SizeConfig.screenWidth! * 0.15),
                      Obx(() => IconButton(
                          icon: Icon(
                            controllerNum.showPassword.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: SizeConfig.defaultSize! * 2.2,
                          ),
                          onPressed: () {
                            auth.getBalance();
                            controllerNum.showPassword.toggle();
                            // });
                          })),
                      Obx(() => Text(
                            controllerNum.showPassword.value
                                ? controllerNum.hidePassword('00000')
                                : auth.balance.value.toString(),
                            // widget.text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.defaultSize! * 1.5,
                            ),
                          )),
                      SizedBox(width: SizeConfig.screenWidth! * 0.03),
                      Text(
                        'رصيدي',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          fontSize: SizeConfig.defaultSize! * 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.brown,

                    // shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],

                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: SizeConfig.defaultSize! * 0.5,
                    right: SizeConfig.defaultSize! * 0.5,
                  ),
                  width: SizeConfig.screenWidth! * 0.77,
                  height: SizeConfig.screenHeight! * 0.05,
                  child: InkWell(
                    onTap: () {
                      Get.to(Operations());
                    },
                    child: Text(
                      "عمليات الحساب",
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize! * 1.7,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ));
  }
}
