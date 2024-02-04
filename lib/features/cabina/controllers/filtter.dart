



import 'package:get/get.dart';

import 'phone_number_controller.dart';


// import '../models/bacat.dart';

class FilterController extends GetxController {
  
  PhoneNumberController get controllerNum => Get.put(PhoneNumberController(), permanent: true);
  
  final filterbacat = [].obs;
  final RxList selectedCatigories = [].obs;
  

  void filterAdd(category, bacatList) {
    selectedCatigories.add(category);
    showFilter(bacatList);
  }

  void filterRemove(category, bacatList) {
    selectedCatigories.remove(category);
    showFilter(bacatList);
  }

  void showFilter(bacatList) {
    filterbacat.value = bacatList.where(
      (bacat) {
        // print(selectedCatigories.value);
        return selectedCatigories.isEmpty ||
            selectedCatigories.contains(bacat.catigory);
      },
    ).toList();
  }
}
