import 'package:equatable/equatable.dart';
import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';
import 'package:financial_app/src/modules/auth/interactor/repositories/auth_repository.dart';
import 'package:financial_app/src/modules/home/interactor/state/home_state.dart';
import 'package:flutter/material.dart';

part 'home_store_state.dart';

class HomeStore extends ValueNotifier<HomeStoreState> {
  final AuthRepository _authRepository;

  HomeStore(this._authRepository) : super(const HomeStoreState());

  void fetchUser() async {
    final user = await _authRepository.getUser();

    if (user != null) {
      value = value.copyWith(user: user);
    }
  }
}
