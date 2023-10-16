import 'package:financial_app/src/modules/auth/data/adapters/user_adapter.dart';
import 'package:financial_app/src/modules/auth/interactor/repositories/user_repository.dart';
import 'package:financial_app/src/modules/core/base/interector/repositories/base_repository.dart';

import '../../interactor/entities/user.dart';

class UserRepositoryImpl extends BaseRepository<UserEntity> implements UserRepository {
  const UserRepositoryImpl(super.firestore) : super(collectionName: 'users');

  @override
  Future<UserEntity?> getUser(String id) async {
    final data = await get(id);

    if (data != null) {
      return UserAdapter.fromJson(data);
    }

    return null;
  }
}
