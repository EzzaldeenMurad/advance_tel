// checkResponce({required controller}) {
//   if (controller.query.value.resultCode == null) {
//     return 'waiting';
//   } else if (controller.query.value.resultCode == '0') {
//     if (controller.query.value.resultDesc!.contains('under process')) {
//       return 'قيد الانتظار ';
//     } else {
//       return controller.query.value.resultDesc;
//     }
//   } else if (controller.query.value.resultCode == '1013') {
//     // ignore: prefer_interpolation_to_compose_strings
//     return '${'!' + controller.query.value.resultDesc!.substring(0, 18)}\nرصيدك هو:${controller.query.value.remainAmount}';
//   }
//   return controller.query.value.resultDesc;
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/operations/controllers/operation_controller.dart';
import '../../features/operations/models/operation_model.dart';
import 'dailog/dailog_waiting.dart';
import '../../features/cabina/widget/gahez_gahez.dart';
import 'dailog/custom_dailog_result.dart';

// checkResponce and show
futureBuilderResponce(
    {transId,
    token,
    phoneNumberController,
    categorie,
    price,
    createdAt,
    serviceName,
    required future}) {
  // future Builder
  return FutureBuilder<dynamic>(
    future: future,
    builder: (context, snapshot) {
      final OperationController operationController = Get.find();

      if (snapshot.connectionState == ConnectionState.waiting) {
        return dailogWaiting();
      } else if (snapshot.hasError) {
        return customDailogResult(text: 'Error: ${snapshot.error}');
      } else if (snapshot.hasData) {
        String? status = '';
        String? readiness = '';
        final query = snapshot.data;
        // check if type  query = String on error
        if (query is String) {
          customDailogResult(text: query);
        } else {
          if (query!.resultCode == '0') {
            if (query.resultDesc!.contains('under process')) {
              status = 'مقيد';
              readiness = 'غير جاهز';
            } else {
              status = 'مقيد';
              readiness = 'جاهز';
            }
          } else {
            status = 'ملغي';
            readiness = 'غير جاهز';
          }
          if (query.resultCode.contains('1013')) {
            operationController.postOperations(
                postOperation: OperationModel(
                    transId: transId,
                    token: token,
                    phoneNumber:
                        phoneNumberController.textPhoneController.value.text,
                    category: categorie,
                    price: price,
                    status: status,
                    serviceName: serviceName,
                    description: query.resultDesc,
                    dateAdded: DateTime.now().toString(),
                    readiness: readiness));
            if (operationController.resultDesc.value
                .contains('لا يوجد لديك رصيد كافي')) {
              return customDailogResult(
                  text:
                      '  لا يوجد لديك رصيد كافي للتحويل الرجاء التواصل مع الادارة'
                      '                          رصيدك هو  ${operationController.data.value}');
            }
          }
          if (query!.resultCode == '0') {
            if (query.resultDesc!.contains('under process')) {
              return customDailogResult(
                  text: 'العملية قيد الانتظار يرجاء مراجعة العمليات');
            } else {
              return GahezGahz(
                phoneNumber:
                    phoneNumberController.textPhoneController.value.text,
                category:serviceName,
                price: price,
                balance: query.remainAmount,
              );
            }
          } else if (query.resultCode == '1013') {
            // ignore: prefer_interpolation_to_compose_strings
            return customDailogResult(
                text:
                    '${'!' + query.resultDesc!.substring(0, 18)}\nرصيدك هو:${query.remainAmount}');
          } else {
            return customDailogResult(text: query.resultDesc);
          }
        }
      }
      return customDailogResult(text: ': ${snapshot.error}');
    },
  );
}

//  Future<Object?> checkResponce(
//     {required controller,
//     transId,
//     token,
//     phoneNumberController,
//     categorie,
//     price,
//     mtnBillBalanceController}) {

//   if (controller.query.value.resultCode == null) {
//     //  print(token);
//     return Get.dialog( custome_dailog_alert(isNull: true, text: ''));
//   } else if (controller.query.value.resultCode == '0') {
//     if (controller.query.value.resultDesc!.contains('under process')) {
//       return Get.dialog(
//           custome_dailog_alert( text: 'قيد الانتظار'));
//     } else {
//       //  print(token);
//       return Get.dialog(GahezGahz(
//         transId: transId.toString(),
//         token: token,
//         phoneNumber: phoneNumberController.textPhoneController.value.text,
//         category: categorie,
//         price: price,
//         status: mtnBillBalanceController.query.value.resultDesc,
//         companyName: phoneNumberController.nameCompany.value,
//         balance: mtnBillBalanceController.query.value.remainAmount,
//       ));
//     }
//   } else if (controller.query.value.resultCode == '1013') {
//      print(token);
//     // ignore: prefer_interpolation_to_compose_strings
//     return Get.dialog( custome_dailog_alert(

//         text:
//             '${'!' + controller.query.value.resultDesc!.substring(0, 18)}\nرصيدك هو:${controller.query.value.remainAmount}'));

//     //  '${'!' + controller.query.value.resultDesc!.substring(0, 18)}\nرصيدك هو:${controller.query.value.remainAmount}';
//   }
//   return Get.dialog(custome_dailog_alert(
//       text: controller.query.value.resultDesc));
//   // controller.query.value.resultDesc;
// }

checkResponce2({required success, required faild, required controller}) {
  if (controller.query.value.resultCode == null) {
    return controller.resultResponce.value != ''
        ? 'expsion' //showToastMessage(message: '${controller.resultResponce.value}')
        : 'null'; //CircularProgressIndicator();
  } else if (controller.query.value.resultCode == '0') {
    if (controller.query.value.resultDesc!.contains('under process')) {
      return '$faild';
    } else {
      return '$success';
    }
  } else {
    return '$faild';
  }
}
