class YemBillOfferModel {
  String? resultCode;
  String? resultDesc;
  String? transid;

  YemBillOfferModel({this.resultCode, this.resultDesc, this.transid});

  YemBillOfferModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    transid = json['transid'];
  }
}
