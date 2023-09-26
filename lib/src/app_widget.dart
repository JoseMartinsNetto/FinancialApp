import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'modules/settings/interector/settings_controller.dart';
import 'shared/helpers/firebase_helper.dart';
import 'shared/theme/theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final SettingsController settingsController = Modular.get();

  @override
  void initState() {
    FirebaseHelper.init();
    super.initState();
  }

  @override
  void dispose() {
    settingsController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: settingsController.loadSettings(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(color: Colors.white);
          }

          return AnimatedBuilder(
            animation: settingsController,
            builder: (BuildContext context, Widget? child) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                restorationScopeId: 'app',
                routeInformationParser: Modular.routeInformationParser,
                routerDelegate: Modular.routerDelegate,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: settingsController.themeMode,
              );
            },
          );
        });
  }
}
