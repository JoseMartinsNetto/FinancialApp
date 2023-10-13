import 'package:equatable/equatable.dart';
import '../../../../core/states.dart';
import '../../../../core/value_objects.dart';

class AuthState extends Equatable {
  final Email email;
  final Password password;
  final BaseState state;

  const AuthState({
    this.email = const Email(''),
    this.password = const Password(''),
    this.state = const InitialState()
});

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

  @override
  List<Object?> get props => [email, password];
}