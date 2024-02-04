import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/phone_number_controller.dart';
import 'confirm_request.dart';

const double screenHeight = 0;
// MediaQuery.of(context).size.height;
// final double appBarHeight = AppBar().preferredSize.height;
// final double statusBarHeight = MediaQuery.of(context).padding.top;
// final double bottomSheetHeight =
//     screenHeight - appBarHeight - statusBarHeight;
bool _isChecked = false;

class ShowBottomeSheet extends StatelessWidget {
  final String? offerCode;
  final String? price;
  final String? offerName;

  ShowBottomeSheet({super.key, this.price, this.offerName, this.offerCode});

  final PhoneNumberController controllerNum = Get.put(PhoneNumberController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),

              // insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 340),
              child: Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 0), //
                  child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.infinity,
                          //  height: double.maxFinite,
                          margin: const EdgeInsets.only(),
                          decoration: const BoxDecoration(
                            // border: Border(bottom:BorderSide()),
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey, // لون الحدود
                                width: 1.0, // عرض الحدود
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Expanded(
                                child: Text(
                                  offerName ?? '',
                                  style: const TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Divider(),
                        Container(
                          child: Column(
                            children: [
                              // Container(
                              //   width: 200,
                              // child: CheckboxListTile(
                              //   title: Text('  تسديد مبلغ السلفه',
                              //       style: TextStyle(color: Colors.blue)),
                              //   value: _isChecked,
                              //   onChanged: (bool? value) {
                              //     setState(() {
                              //       _isChecked = value ?? false;
                              //     });
                              //   },
                              // ),
                              // ),
                              if (controllerNum.numper == '77' ||
                                  controllerNum.numper == '78')
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(" 7ريال",
                                        style: TextStyle(fontSize: 18)),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 70.0,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: TextField(
                                        controller: controllerNum
                                            .priceBacatController.value,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        style:
                                            const TextStyle(fontSize: 16.0), //
                                      ),
                                    ),
                                    const Text(" سعر الباقه",
                                        style: TextStyle(fontSize: 18))
                                  ],
                                ),
                            ],
                          ),
                        ),
                        controllerNum.numper == '77' ||
                                controllerNum.numper == '78'
                            ? Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey, // لون الحدود
                                      width: 1.0, // عرض الحدود
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.grey, // لون الحدود
                                      width: 1.0, // عرض الحدود
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          price ?? "",
                                          style: const TextStyle(
                                              color: Colors.blue),
                                        ),
                                        const Text(
                                            " الصافي بعد خصم الضريبه الحكومي ",
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          price ?? '',
                                          style: const TextStyle(
                                              color: Colors.blue),
                                        ),
                                        const Text("   الرصيد الحالي"),
                                        const Text("   الرصيد  المتبقي")
                                      ],
                                    ),
                                  ],
                                ))
                            : Container(
                                height: 60,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey, // لون الحدود
                                      width: 1.0, // عرض الحدود
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.grey, // لون الحدود
                                      width: 1.0, // عرض الحدود
                                    ),
                                  ),
                                )),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.delete),
                              Text("حذف الباقه",
                                  style: TextStyle(fontSize: 18)),
                              Text(""),
                            ],
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ]))),
          InkWell(
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Icon(Icons.done), Text(" تسديد+تفعيل"), Text("")],
              ),
            ),
            onTap: () {
              Get.back();
              Get.to(ConfirmRequst(
                codeBacat: offerCode,
                price: price,
                categorie: offerName,
                checkProcess: 'baqat',
              ));
            },
          ),
        ],
      ),
    );
  }
}
