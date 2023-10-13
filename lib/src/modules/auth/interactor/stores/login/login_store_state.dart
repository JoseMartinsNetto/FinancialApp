part of 'login_store.dart';

class LoginStoreState extends Equatable {
  final Email email;
  final PasswordForLogin password;
  final AuthState state;

  const LoginStoreState(
      {this.email = const Email(''),
      this.password = const PasswordForLogin(''),
      this.state = const InitialAuthState()});

  LoginDTO get loginDto => LoginDTO(email: email, password: password);

  LoginStoreState copyWith({
    AuthState? state,
    Email? email,
    PasswordForLogin? password,
  }) {
    return LoginStoreState(
      state: state ?? this.state,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [email, password, state];
}
