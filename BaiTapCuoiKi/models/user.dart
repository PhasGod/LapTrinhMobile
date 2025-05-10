class User {
  String id;
  String username;
  String password;
  String email;
  String? avatar;
  DateTime createdAt;
  DateTime lastActive;
  String role; // Thêm thuộc tính role

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    this.avatar,
    required this.createdAt,
    required this.lastActive,
    required this.role, // Thêm role vào constructor
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      username: json['username'] ?? '',
      password: json['password'] ?? '',
      email: json['email'] ?? '',
      avatar: json['avatar'] != null ? json['avatar'] as String : null,
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
      lastActive: DateTime.parse(json['lastActive'] ?? DateTime.now().toIso8601String()),
      role: json['role'] ?? 'worker', // Gán giá trị mặc định cho role
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'avatar': avatar,
      'createdAt': createdAt.toIso8601String(),
      'lastActive': lastActive.toIso8601String(),
      'role': role, // Thêm role vào JSON
    };
  }
}