class QueryBalanceModel {
  String? resultCode;
  String? mobileType;
  String? balance;
  String? resultDesc;

  QueryBalanceModel({
    this.resultCode,
    this.mobileType,
    this.balance,
    this.resultDesc,
  });
  QueryBalanceModel.fromJson(Map<String, dynamic> json) {
    // return Query(
    resultCode = json['resultCode'] ?? '';
    mobileType = json['mobileType'] ?? '';
    balance = json['balance'] ?? '';
    resultDesc = json['resultDesc'] ?? '';
    // );
  }
}



// class Query {
//   final String resultCode;
//   final String mobileType;
//   final String balance;
//   final String resultDesc;

//   Query({
//     required this.resultCode,
//     required this.mobileType,
//     required this.balance,
//     required this.resultDesc,
//   });
//   factory Query.fromJson(Map<String, dynamic> json) {
//     return Query(
//       resultCode: json['resultCode'],
//       mobileType: json['mobileType'],
//       balance: json['balance'],
//       resultDesc: json['resultDesc'],
//     );
//   }
// }

