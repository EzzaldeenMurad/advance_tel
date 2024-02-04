class OperationModel {
  int? id;
  String? category;
  String? serviceName;
  String? status;
  dynamic price;
  String? description;
  String? phoneNumber;
  String? dateAdded;
  String? readiness;
  String? token;
  int? transId;
  int? userId;
  String? createdAt;
  String? updatedAt;

  OperationModel(
      {this.id,
      this.serviceName,
      this.status,
      this.phoneNumber,
      this.price,
      this.category,
      this.description,
      this.dateAdded,
      this.readiness,
      this.token,
      this.transId,
      this.userId,
      this.createdAt,
      this.updatedAt});

  OperationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    category = json['category'];
    status = json['status'];
    price = json['price'];
    description = json['description'];
    phoneNumber = json['phone_namber'];
    dateAdded = json['date_added'];
    transId = json['trans_id'];
    token = json['token'];
    readiness = json['readiness'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'service_name': serviceName,
      'status': status,
      'description': description,
      'price': price,
      'phone_namber': phoneNumber,
      'date_added': dateAdded,
      'readiness': readiness,
      'token': token,
      'trans_id': transId,
      'user_id': userId,
    };
  }
}
