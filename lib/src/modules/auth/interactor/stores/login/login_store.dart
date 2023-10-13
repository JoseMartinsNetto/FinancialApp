import 'package:financial_app/src/modules/auth/interactor/dto/login.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/value_objects.dart';
import '../../repositories/auth_repository.dart';
import '../../states/auth_state.dart';

part 'login_store_state.dart';

class LoginStore extends ValueNotifier<LoginStoreState> {
  final AuthRepository authRepository;

  LoginStore(this.authRepository) : super(const LoginStoreState());

  void changeEmail(String? newEmail) => value = value.copyWith(
        email: Email(newEmail ?? ''),
        state: const InitialAuthState(),
      );

  void changePassword(String? newPassword) => value = value.copyWith(
        password: PasswordForLogin(newPassword ?? ''),
        state: const InitialAuthState(),
      );

  void login() async {
    final newState = await authRepository.login(value.loginDto);

    value = value.copyWith(state: newState);
  }
}
