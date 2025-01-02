import 'package:connectcar/theme/app_bar_theme.dart';
import 'package:connectcar/theme/bottom_navigation_bar_theme.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/theme/input_decoration_theme.dart';
import 'package:connectcar/theme/theme_provider.dart';
import 'package:flutter/material.dart';


class CustomThemeData {
  ThemeData buildThemeData(AppTheme appTheme) {
    final CustomAppBarTheme _appBarTheme = CustomAppBarTheme();
    final CustomBottomNavigationBarTheme _bottomNavigationTheme = CustomBottomNavigationBarTheme();
    final CustomInputDecorationTheme _inputDecorationTheme = CustomInputDecorationTheme();
    
    return ThemeData(
      colorScheme: appTheme == AppTheme.dark
          ? const ColorScheme.dark(
              primary: CoresTheme.lilasPrimarioEscuro,
              surface: CoresTheme.backgroundTemaEscuro,
              onSurface: CoresTheme.textoTemaEscuro,
            )
          : const ColorScheme.light(
              primary: CoresTheme.azulPrimarioClaro,
              surface: CoresTheme.backgroundTemaClaro,
              onSurface: CoresTheme.textoPrimarioClaro,
            ),
      useMaterial3: true,
      appBarTheme: _appBarTheme.buildAppBarTheme(appTheme),
      bottomNavigationBarTheme: _bottomNavigationTheme.buildBottomNavTheme(appTheme),
      inputDecorationTheme: _inputDecorationTheme.buildInputTheme(appTheme),
    );
  }
}