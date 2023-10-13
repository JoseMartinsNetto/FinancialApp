import 'package:financial_app/src/modules/auth/ui/pages/login_page.dart';
import 'package:financial_app/src/modules/auth/ui/pages/welcome_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interactor/stores/login/login_store.dart';

class AuthModule extends Module {
  static String routeName = '/';

  @override
  void routes(RouteManager r) {
    r.child('/welcome', child: (ctx) => const WelcomePage());
    r.child('/', child: (ctx) => LoginPage(ctx.read()));

    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.add(LoginStore.new);

    super.binds(i);
  }
}
