import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/value_objects.dart';
import '../../states/auth_state.dart';

part 'login_store_state.dart';

class LoginStore extends ValueNotifier<LoginStoreState> {
  LoginStore() : super(const LoginStoreState());

  void changeEmail(String? newEmail) => value = value.copyWith(email: Email(newEmail ?? ''));
  void changePassword(String? newPassword) =>
      value = value.copyWith(password: PasswordForLogin(newPassword ?? ''));

  void login() async {}
}
