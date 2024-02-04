import 'package:get/get.dart';
import '../../../core/services/laravel/api_offer.dart';
import '../models/offer_model.dart';

class OfferController extends GetxController {
  RxList<OfferModel> offer = <OfferModel>[].obs;
  

  @override
  void onInit() {
    super.onInit();
    getOffer();
  }
  
  getOffer() async {
    offer.value = await ApiServicesOffer.fetchOffers();
  }
}
