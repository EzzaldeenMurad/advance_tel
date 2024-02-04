import 'package:dio/dio.dart';
import '../../../features/cabina/models/offer_model.dart';

class ApiServicesOffer {
 
  static  Future<List<OfferModel>> fetchOffers() async {
  try {
   final response = await Dio().get('http://10.0.2.2:8000/api/offer'); // Replace with your API URL
    final jsonList = response.data as List<dynamic>;

    return jsonList.map<OfferModel>((json) => OfferModel.fromJson(json)).toList();
  } catch (e) {
    print('Error fetching offers: $e');
    return [];
  }
}
}
