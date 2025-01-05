import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/theme/theme_riverpod.dart';
import 'package:flutter/material.dart';

class CustomAppBarTheme {
  AppBarTheme buildAppBarTheme(AppTheme appTheme) {
    return AppBarTheme(
      elevation: 3.0,
      backgroundColor: appTheme == AppTheme.dark
          ? CoresTheme.backgroundTemaEscuro
          : CoresTheme.backgroundTemaClaro,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: appTheme == AppTheme.dark
            ? CoresTheme.textoTemaEscuro
            : CoresTheme.textoPrimarioClaro,
        fontSize: 22,
      ),
      iconTheme: IconThemeData(
        color: appTheme == AppTheme.dark
            ? CoresTheme.textoTemaEscuro
            : CoresTheme.textoPrimarioClaro,
      ),
    );
  }
}
