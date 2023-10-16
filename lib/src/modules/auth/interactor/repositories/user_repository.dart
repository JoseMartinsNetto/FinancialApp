import '../entities/user.dart';

abstract class UserRepository {
  const UserRepository();

  Future<UserEntity?> getUser(String id);
}
