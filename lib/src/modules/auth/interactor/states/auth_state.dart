import 'package:equatable/equatable.dart';
import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';

sealed class AuthState extends Equatable {
  const AuthState();
}

class InitialAuthState extends AuthState {
  const InitialAuthState();

  @override
  List<Object?> get props => [];
}

class LoadingAuthState extends AuthState {
  const LoadingAuthState();

  @override
  List<Object?> get props => [];
}

class SuccessAuthState extends AuthState {
  final UserEntity user;
  const SuccessAuthState(this.user);

  @override
  List<Object?> get props => [user];
}

class FailureAuthState extends AuthState {
  final String message;

  const FailureAuthState(this.message);

  @override
  List<Object?> get props => [message];
}
