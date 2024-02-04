
import 'package:flutter/material.dart';
import 'app.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

  runApp(FawryCash());

// final offers = await fetchOffers();
//   // Use the offers list as needed
//   for (var offer in offers) {
//     print('Offer ID: ${offer.id}');
//     print('Offer Name: ${offer.offerName}');
    // Print other properties as needed
  // }
  // runApp(FawryCash());
}
// Future<List<OfferModel>> getOffer() async {
// final response = await Dio().get('http://10.0.2.2:8000/api/offer');
//   final jsonList = await response.json();

//   return jsonList.map<OfferModel>((json) => OfferModel.fromJson(json)).toList();
// }
// Future<List<OfferModel>> fetchOffers() async {
//   try { 
//    final response = await createDio().get('offer'); // Replace with your API URL
//     final jsonList = response.data as List<dynamic>;

//     return jsonList.map<OfferModel>((json) => OfferModel.fromJson(json)).toList();
//   } catch (e) {
//     print('Error fetching offers: $e');
//     return [];
//   }
// }