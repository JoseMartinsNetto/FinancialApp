import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import '../../auth/interactor/repositories/auth_repository.dart';

class AuthGuard extends RouteGuard {
  final _auth = Modular.get<AuthRepository>();

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    if ((await _auth.getUser()) != null) {
      return true;
    }

    return false;
  }
}
