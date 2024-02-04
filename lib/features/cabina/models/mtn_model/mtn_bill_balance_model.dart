class MtnBillBalanceModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  MtnBillBalanceModel(
      {this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  MtnBillBalanceModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
