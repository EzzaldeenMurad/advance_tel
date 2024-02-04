class YemenPostModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  YemenPostModel({
    this.resultCode,
    this.resultDesc,
    this.remainAmount,
    this.transid,
  });

  YemenPostModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
