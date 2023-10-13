import '../../../../core/state/base_state.dart';
import '../../../../core/value_objects/value_objects.dart';

class AuthState extends BaseState {
  final Email email;
  final Password password;

  const AuthState({
    this.email = const Email(''),
    this.password = const Password(''),
});

  @override
  List<Object?> get props => [];

  @override
  AuthState copyWith({
    Email? email,
    Password? password
}) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password
    );
  }
}