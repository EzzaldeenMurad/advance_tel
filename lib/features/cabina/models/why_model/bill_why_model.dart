class BillWhyModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  BillWhyModel({this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  BillWhyModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }

}
