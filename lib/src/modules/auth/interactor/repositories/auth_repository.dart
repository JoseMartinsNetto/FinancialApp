import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';

import '../dto/login.dart';
import '../states/auth_state.dart';

abstract interface class AuthRepository {
  Future<AuthState> login(LoginDTO dto);
  Future<void> logout();
  Future<UserEntity?> getUser();
}
