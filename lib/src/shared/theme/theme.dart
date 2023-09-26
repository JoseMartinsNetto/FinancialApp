import 'package:flutter/material.dart';

part 'color_schemes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  fontFamily: 'Montserrat',
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  fontFamily: 'Montserrat',
);
