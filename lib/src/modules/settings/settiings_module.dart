import 'package:financial_app/src/modules/settings/ui/pages/settings_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsModule extends Module {
  static const routeName = '/settings';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => SettingsPage(ctx.read()));
    super.routes(r);
  }
}
