import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/settings/interector/settings_controller.dart';
import 'modules/settings/interector/settings_service.dart';
import 'modules/settings/settiings_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(HomeModule.routeName, module: HomeModule());
    r.module(SettingsModule.routeName, module: SettingsModule());
    r.module(AuthModule.routeName, module: AuthModule());

    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addSingleton(SettingsService.new);
    i.addSingleton(SettingsController.new);
    super.binds(i);
  }
}
