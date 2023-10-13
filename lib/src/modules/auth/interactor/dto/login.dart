import '../../../../core/value_objects.dart';

class LoginDTO {
  final Email email;
  final PasswordForLogin password;

  const LoginDTO({required this.email, required this.password});
}