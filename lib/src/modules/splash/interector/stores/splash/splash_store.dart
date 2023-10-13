import 'package:equatable/equatable.dart';
import 'package:financial_app/src/modules/auth/interactor/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

import '../../states/splash_state.dart';

part 'splash_store_state.dart';

class SplashStore extends ValueNotifier<SplashStoreState> {
  final AuthRepository _authRepository;

  SplashStore(this._authRepository) : super(const SplashStoreState());

  void checkIfLogged() async {
    value = value.copyWith(state: const SplashLoadingState());

    final user = _authRepository.getUser();

    if (user != null) {
      value = value.copyWith(state: const SplashUserLoggedState());
    } else {
      value = value.copyWith(state: const SplashUserNotLoggedState());
    }
  }
}
