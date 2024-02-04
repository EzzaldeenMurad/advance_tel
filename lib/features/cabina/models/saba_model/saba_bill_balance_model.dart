class SabaUnitModel {
  String? resultCode;
  String? resultDesc;
  dynamic remainAmount;
  String? transid;

  SabaUnitModel({
    this.resultCode,
    this.transid,
    this.resultDesc,
    this.remainAmount,
  });

  factory SabaUnitModel.fromJson(Map<String, dynamic> json) {
    return SabaUnitModel(
      resultCode: json['resultCode'],
      transid: json['mobileType'],
      resultDesc: json['resultDesc'],
      remainAmount: json['remainAmount'],
    );
    // resultCode = json['resultCode'];
    // transid = json['mobileType'];
    // resultDesc = json['resultDesc'];
    // remainAmount = json['remainAmount'];
    // sequenceId = json['sequenceId'];
  }
}
