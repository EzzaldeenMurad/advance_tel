class OfferModel {
  int? id;
  String? offerName;
  String? offerType;
  String? companyName;
  dynamic price;
  String? offerCode;
  String? subscriptionType;
  String? paymentType;
  String? internet;
  String? sms;
  String? minutes;
  String? validity;
  String? createdAt;
  String? updatedAt;

  OfferModel(
      {this.internet,
      this.sms,
      this.minutes,
      this.validity,
      this.id,
      this.offerName,
      this.offerType,
      this.companyName,
      this.price,
      this.offerCode,
      this.subscriptionType,
      this.paymentType,
      this.createdAt,
      this.updatedAt});

  OfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    offerName = json['offer_name'];
    offerType = json['offer_type'];
    companyName = json['company_name'];
    price = json['price'];
    offerCode = json['offer_code'];
    subscriptionType = json['subscription_type'];
    paymentType = json['payment_type'];
    internet = json['internet'];
    sms = json['sms'];
    minutes = json['minutes'];
    validity = json['validity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
