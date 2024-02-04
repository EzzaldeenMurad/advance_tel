class SabaOfferModel {
  String? resultCode;
  String? resultDesc;
  String? transid;

  SabaOfferModel({this.resultCode, this.resultDesc, this.transid});

  SabaOfferModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    transid = json['transid'];
  }
}
