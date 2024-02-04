class YemBillBalanceModel {
  String? resultCode;
  String? resultDesc;
  dynamic remainAmount;
  String? transid;

  YemBillBalanceModel({
    this.resultCode,
    this.transid,
    this.resultDesc,
    this.remainAmount,
  });

  YemBillBalanceModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
