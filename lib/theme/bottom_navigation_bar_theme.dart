import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/theme/theme_provider.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarTheme {
  BottomNavigationBarThemeData buildBottomNavTheme(AppTheme appTheme) {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: appTheme == AppTheme.dark
          ? CoresTheme.backgroundTemaEscuro
          : CoresTheme.backgroundTemaClaro,
      selectedItemColor: appTheme == AppTheme.dark
          ? CoresTheme.lilasPrimarioEscuro
          : CoresTheme.azulPrimarioClaro,
      unselectedItemColor: appTheme == AppTheme.dark
          ? CoresTheme.textoTemaEscuro.withOpacity(0.6)
          : CoresTheme.textoSecundarioClaro.withOpacity(0.6),
      showUnselectedLabels: true,
    );
  }
}