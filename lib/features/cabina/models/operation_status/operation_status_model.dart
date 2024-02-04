class OperationStatusModel {
  String? resultCode;
  String? resultDesc;
  int? isDone;
  int? isBan;
  String? mobile;
  String? price;
  String? reason;
  String? transid;

  OperationStatusModel(
      {this.resultCode,
      this.resultDesc,
      this.isDone,
      this.isBan,
      this.mobile,
      this.price,
      this.reason,
      this.transid});

  OperationStatusModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    isDone = json['isDone'];
    isBan = json['isBan'];
    mobile = json['mobile'];
    price = json['price'];
    reason = json['reason'];
    transid = json['transid'];
  }
}
