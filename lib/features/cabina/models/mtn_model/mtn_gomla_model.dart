class MtnGomlaModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  MtnGomlaModel(
      {this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  MtnGomlaModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
