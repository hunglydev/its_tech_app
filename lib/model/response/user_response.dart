class UserResponse {
  String? id;
  String? name;
  String? classGroup; // Đổi tên từ `class` để tránh xung đột từ khóa
  String? grade;
  String? phoneNumber;
  String? photoUrl;
  DateTime? birthdate;
  String? email;
  int? role;

  UserResponse({
    this.id,
    this.name,
    this.classGroup,
    this.grade,
    this.phoneNumber,
    this.photoUrl,
    this.birthdate,
    this.email,
    this.role,
  });

  // Constructor từ JSON
  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      classGroup: json['class'] as String?,
      grade: json['Grade'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      photoUrl: json['photoUrl'] as String?,
      birthdate:
          json['birthdate'] != null ? DateTime.parse(json['birthdate']) : null,
      email: json['email'] as String?,
      role: json['role'] as int?,
    );
  }

  // Phương thức để chuyển đối tượng thành JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'class': classGroup,
      'Grade': grade,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
      'birthdate': birthdate?.toIso8601String(),
      'email': email,
      'role': role,
    };
  }
}
