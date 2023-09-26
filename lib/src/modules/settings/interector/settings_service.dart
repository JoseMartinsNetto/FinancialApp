import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  Future<ThemeMode> themeMode() async {
    final preferences = await SharedPreferences.getInstance();

    final themeText = preferences.getString('theme');

    if (themeText == null) return ThemeMode.light;

    return ThemeMode.values.firstWhere(
      (ThemeMode mode) => mode.toString() == themeText,
      orElse: () => ThemeMode.light,
    );
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('theme', theme.toString());
  }
}
