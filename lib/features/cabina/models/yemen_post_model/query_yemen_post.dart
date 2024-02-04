class QueryYemenPostModel {
  String? resultCode;
  String? resultDesc;
  String? balance;
  int? remainAmount;
  String? transid;

  QueryYemenPostModel(
      {this.resultCode,
      this.resultDesc,
      this.balance,
      this.remainAmount,
      this.transid});

  QueryYemenPostModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    balance = json['balance'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
