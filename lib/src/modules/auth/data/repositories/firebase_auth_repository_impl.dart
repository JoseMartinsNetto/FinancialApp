import 'package:financial_app/src/modules/auth/data/adapters/user_adapter.dart';
import 'package:financial_app/src/modules/auth/interactor/dto/login.dart';
import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';
import 'package:financial_app/src/modules/auth/interactor/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../interactor/repositories/auth_repository.dart';

class FirebaseAuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _auth;

  const FirebaseAuthRepositoryImpl(this._auth);

  @override
  Future<AuthState> login(LoginDTO dto) async {
    try {
      final credentials = await _auth.signInWithEmailAndPassword(
        email: dto.email.value,
        password: dto.password.value,
      );

      return SuccessAuthState(UserAdapter.fromFirebaseUser(credentials.user));
    } on FirebaseAuthException catch (error) {
      return FailureAuthState(error.message ?? 'Error on login');
    }
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
  }

  @override
  UserEntity? getUser() {
    final user = _auth.currentUser;

    if (user != null) {
      return UserAdapter.fromFirebaseUser(user);
    }
    return null;
  }
}
