import 'package:financial_app/src/modules/splash/interector/states/splash_state.dart';
import 'package:financial_app/src/modules/splash/interector/stores/splash/splash_store.dart';
import 'package:financial_app/src/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  final SplashStore store;

  const SplashPage(this.store, {super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashStore get store => widget.store;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      Modular.to.pushReplacementNamed('/auth');
    });

    store.addListener(() {
      final state = store.value.state;

      if (state is SplashUserLoggedState) {
        Modular.to.pushReplacementNamed('/home');
      } else if (state is SplashUserNotLoggedState) {
        Modular.to.pushReplacementNamed('/auth');
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Images.splashLogo),
      ),
    );
  }
}
