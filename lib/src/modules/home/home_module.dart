import 'package:financial_app/src/modules/auth/auth_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interactor/stores/home/home_store.dart';
import 'ui/pages/home_page.dart';

class HomeModule extends Module {
  static String routeName = '/home';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => HomePage(ctx.read()));
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.add(HomeStore.new);

    super.binds(i);
  }

  @override
  List<Module> get imports => [AuthModule()];
}
