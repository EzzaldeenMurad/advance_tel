class MtnOfferModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  MtnOfferModel(
      {this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  MtnOfferModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
