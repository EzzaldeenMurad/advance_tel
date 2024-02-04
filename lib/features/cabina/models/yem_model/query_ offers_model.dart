class QueryOffersModel {
  String? resultCode;
  String? resultDesc;
  List<Offers>? offers;

  QueryOffersModel({this.resultCode, this.resultDesc, this.offers});

  QueryOffersModel.fromJson(Map<String, dynamic> json) {
    resultCode = json["resultCode"];
    resultDesc = json["resultDesc"];
    offers = (json["offers"] as List).map((e) => Offers.fromJson(e)).toList();
  } 

   List<QueryOffersModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => QueryOffersModel.fromJson(map)).toList();
  }
}

class Offers {
  dynamic offerId;
  String? offerName;
  String? offerStartDate;
  String? offerEndDate;
  dynamic monthlyFee;
  dynamic busiFee;

  Offers(
      {this.offerId,
      this.offerName,
      this.offerStartDate,
      this.offerEndDate,
      this.monthlyFee,
      this.busiFee});

  Offers.fromJson(Map<String, dynamic> json) {
    offerId = json["offerId"];
    offerName = json["offerName"];
    offerStartDate = json["offerStartDate"];
    offerEndDate = json["offerEndDate"];
    monthlyFee = json["monthlyFee"];
    busiFee = json["BusiFee"];
  }

  static List<Offers> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Offers.fromJson(map)).toList();
  }
}
