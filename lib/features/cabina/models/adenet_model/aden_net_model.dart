class AdenetModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  AdenetModel(
      {this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  AdenetModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
