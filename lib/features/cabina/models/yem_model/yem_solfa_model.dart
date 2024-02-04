class YemSolfaModel {
  String? resultCode;
  String? resultDesc;
  String? status;
  String? message;

  YemSolfaModel({this.resultCode, this.resultDesc, this.status, this.message});

  YemSolfaModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultDesc = json['resultDesc'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resultCode'] = resultCode;
    data['resultDesc'] = resultDesc;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}
