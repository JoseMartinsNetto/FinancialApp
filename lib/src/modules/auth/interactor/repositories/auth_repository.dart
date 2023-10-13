import '../states/auth_state.dart';

abstract interface class AuthRepository {
  Future<AuthState> login();
}