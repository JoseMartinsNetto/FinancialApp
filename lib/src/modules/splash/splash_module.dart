import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => const SplashPage());
    super.routes(r);
  }

  @override
  List<Module> get imports => [];
}
