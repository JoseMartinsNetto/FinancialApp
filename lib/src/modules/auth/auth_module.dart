import 'package:financial_app/src/modules/auth/data/repositories/firebase_auth_repository_impl.dart';
import 'package:financial_app/src/modules/auth/ui/pages/login_page.dart';
import 'package:financial_app/src/modules/auth/ui/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    i.add(LoginStore.new);
    i.add<AuthRepository>(FirebaseAuthRepositoryImpl.new);
    i.addInstance(FirebaseAuth.instance);

    super.exportedBinds(i);
  }
}
