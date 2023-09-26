import 'package:financial_app/src/modules/auth/ui/pages/login_page.dart';
import 'package:financial_app/src/modules/auth/ui/pages/welcome_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  static String routeName = '/';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => const WelcomePage());
    r.child('/login', child: (ctx) => const LoginPage());

    super.routes(r);
  }
}
