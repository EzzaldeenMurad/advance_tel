class MtnBillCategoriesModel {
  String? resultCode;
  String? resultDesc;
  int? remainAmount;
  String? transid;

  MtnBillCategoriesModel(
      {this.resultCode, this.resultDesc, this.remainAmount, this.transid});

  MtnBillCategoriesModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    remainAmount = json['remainAmount'];
    transid = json['transid'];
  }
}
