import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAdapter {
  static UserEntity fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      image: json['imageUrl'] ?? '',
      userName: json['userName'] ?? '',
    );
  }

  static UserEntity fromFirebaseUser(User? user) {
    return UserEntity(
      id: user?.uid ?? '',
      email: user?.email ?? '',
      image: user?.photoURL ?? '',
      userName: user?.displayName ?? '',
    );
  }
}
