import 'package:financial_app/src/modules/auth/auth_module.dart';
import 'package:financial_app/src/modules/splash/interector/stores/splash/splash_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => SplashPage(ctx.read()));
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.add(SplashStore.new);

    super.binds(i);
  }

  @override
  List<Module> get imports => [AuthModule()];
}
