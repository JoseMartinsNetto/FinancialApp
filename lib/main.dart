import 'package:financial_app/src/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/app_widget.dart';

void main() async {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
