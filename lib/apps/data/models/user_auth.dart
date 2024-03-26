import 'user.dart';

class UserAuth extends User {
  String token;

  UserAuth({
    required super.userId,
    required super.name,
    required super.email,
    required super.password,
    required this.token,
  });

  factory UserAuth.fromJson(Map<String, dynamic> json) {
    return UserAuth(
      userId: json['userId'],
      name: json['name'],
      token: json['token'],
      email: '',
      password: '',
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "token": token,
        "password": password ?? '',
      };
}
