class Users {
  String? id;
  String? name;
  String? classUser;
  String? grade;
  String? phone;
  String? photoUrl;
  String? birthday;
  String? email;
  String? role;

  Users(
    this.id,
    this.name,
    this.classUser,
    this.grade,
    this.phone,
    this.photoUrl,
    this.birthday,
    this.email,
    this.role,
  );

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      json['id'] as String?,
      json['name'] as String?,
      json['classUser'] as String?,
      json['grade'] as String?,
      json['phone'] as String?,
      json['photoUrl'] as String?,
      json['birthday'] as String,
      json['email'] as String?,
      json['role'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (id != null) data['id'] = id;
    if (name != null) data['name'] = name;
    if (classUser != null) data['classUser'] = classUser;
    if (grade != null) data['grade'] = grade;
    if (phone != null) data['phone'] = phone;
    if (photoUrl != null) data['photoUrl'] = photoUrl;
    if (birthday != null) data['birthday'] = birthday;
    if (email != null) data['email'] = email;
    if (role != null) data['role'] = role;
    return data;
  }
}
