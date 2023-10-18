import 'package:financial_app/src/modules/core/core_module.dart';
import 'package:financial_app/src/modules/core/guards/auth_guard.dart';
import 'package:financial_app/src/modules/transactions/transactions_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/settings/interector/settings_controller.dart';
import 'modules/settings/interector/settings_service.dart';
import 'modules/settings/settings_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/', module: SplashModule());
    // r.module('/', module: TransactionsModule());

    r.module(HomeModule.routeName, module: HomeModule(), guards: [AuthGuard()]);
    r.module(TransactionsModule.routeName, module: TransactionsModule());
    r.module(SettingsModule.routeName,
        module: SettingsModule(), guards: [AuthGuard()]);
    r.module(AuthModule.routeName, module: AuthModule());

    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addSingleton(SettingsService.new);
    i.addSingleton(SettingsController.new);
    super.binds(i);
  }

  @override
  List<Module> get imports => [
        CoreModule(),
        AuthModule(),
      ];
}
