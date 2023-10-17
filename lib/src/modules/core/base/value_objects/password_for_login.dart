import 'value_object.dart';

class PasswordForLogin extends ValueObject<String> {
  const PasswordForLogin(super.value);

  @override
  String? get message {
    if (value.isEmpty) {
      return "Senha requerida";
    }

    if (value.length < 6) {
      return "Senha inválida";
    }

    return null;
  }
}