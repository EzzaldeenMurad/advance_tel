class User {
  int? id;
  String? name;
  int? phoneNumber;
  String? loginName;
  dynamic balance;
  String? address;
  String? business;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.name,
    this.phoneNumber,
    this.loginName,
    this.balance,
    this.address,
    this.business,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      phoneNumber: json['phone_number'],
      loginName: json['login_name'],
      balance: json['balance'],
      address: json['address'],
      business: json['business'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
