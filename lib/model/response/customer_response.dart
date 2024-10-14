class CustomerResponse {
  String? id;
  String? name;
  String? classGroup;
  String? email;
  String? phoneNumber;

  CustomerResponse({
    this.id,
    this.name,
    this.classGroup,
    this.email,
    this.phoneNumber,
  });

  factory CustomerResponse.fromJson(Map<String, dynamic> json) {
    return CustomerResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      classGroup: json['class'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'class': classGroup,
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }
}
