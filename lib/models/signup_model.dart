

class SignUpModel {
  SignUpModel({
    this.token,
    this.customer,
  });

  String? token;
  Customer? customer;

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
    token: json["token"],
    customer: Customer.fromJson(json["customer"]),
  );

}

class Customer {
  Customer({
    this.firstName,
    this.lastName,
    this.email,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String? firstName;
  String? lastName;
  String? email;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

}
