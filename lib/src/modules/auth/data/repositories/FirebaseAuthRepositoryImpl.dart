import 'package:financial_app/src/modules/auth/interactor/dto/login.dart';
import 'package:financial_app/src/modules/auth/interactor/states/auth_state.dart';
import '../../interactor/repositories/auth_repository.dart';

class FirebaseAuthRepositoryImpl implements AuthRepository {
  @override
  Future<AuthState> login(LoginDTO dto) {
    throw UnimplementedError();
  }

  @override
  Future<AuthState> logout() {
    throw UnimplementedError();
  }
}
