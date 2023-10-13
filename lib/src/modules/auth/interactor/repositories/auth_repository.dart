import '../dto/login.dart';
import '../states/auth_state.dart';

abstract interface class AuthRepository {
  Future<AuthState> login(LoginDTO dto);
  Future<AuthState> logout();
}
