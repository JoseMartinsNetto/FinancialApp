import 'package:equatable/equatable.dart';

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
  const SuccessAuthState();

  @override
  List<Object?> get props => [];
}

class FailureAuthState extends AuthState {
  final String message;

  const FailureAuthState(this.message);

  @override
  List<Object?> get props => [message];
}