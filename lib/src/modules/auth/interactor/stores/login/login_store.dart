import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/http_client/http_client.dart';
import '../../../../../core/states.dart';
import '../../../../../core/value_objects.dart';

part 'login_store_state.dart';

class LoginStore extends ValueNotifier<LoginStoreState> {
  final HttpClient client;

  LoginStore(this.client): super(const LoginStoreState());

  void changeEmail(String? newEmail) => value = value.copyWith(email: Email(newEmail ?? ''));
  void changePassword(String? newPassword) => value = value.copyWith(password: PasswordForLogin(newPassword ?? ''));

  void login() async {

    final response = await client.get('https://google.com');
    print(response);
  }
}