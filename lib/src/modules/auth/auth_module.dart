import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financial_app/src/modules/auth/data/repositories/firebase_auth_repository_impl.dart';
import 'package:financial_app/src/modules/auth/interactor/repositories/user_repository.dart';
import 'package:financial_app/src/modules/auth/ui/pages/login_page.dart';
import 'package:financial_app/src/modules/auth/ui/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/user_repository_impl.dart';
import 'interactor/repositories/auth_repository.dart';
import 'interactor/stores/login/login_store.dart';

class AuthModule extends Module {
  static String routeName = '/auth';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => const WelcomePage());
    r.child('/login', child: (ctx) => LoginPage(ctx.read()));

    super.routes(r);
  }

  @override
  void exportedBinds(Injector i) {
    i.addInstance(FirebaseAuth.instance);
    i.addInstance(FirebaseFirestore.instance);

    i.add<AuthRepository>(FirebaseAuthRepositoryImpl.new);
    i.add<UserRepository>(UserRepositoryImpl.new);
    i.add(LoginStore.new);

    super.exportedBinds(i);
  }
}
