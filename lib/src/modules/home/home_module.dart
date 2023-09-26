import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/home_page.dart';

class HomeModule extends Module {
  static String routeName = '/home';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => const HomePage());
    super.routes(r);
  }
}
