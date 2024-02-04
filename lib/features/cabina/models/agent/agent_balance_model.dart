class AgentBalanceModel {
  String? resultCode;
  String? resultDesc;
  int? balance;
  String? transid;

  AgentBalanceModel({this.resultCode, this.resultDesc, this.balance, this.transid});

  AgentBalanceModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    balance = json['balance'];
    transid = json['transid'];
  }
}
