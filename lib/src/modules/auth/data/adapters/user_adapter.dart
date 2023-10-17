import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';

class UserAdapter {
  static UserEntity fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      image: json['imageUrl'] ?? '',
      userName: json['userName'] ?? '',
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      balance: json['balance'] ?? 0.0,
    );
  }
}
