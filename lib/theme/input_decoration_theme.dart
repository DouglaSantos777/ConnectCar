import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/theme/theme_provider.dart';
import 'package:flutter/material.dart';

class CustomInputDecorationTheme{
    InputDecorationTheme buildInputTheme(AppTheme appTheme) {
    return InputDecorationTheme(
      labelStyle: TextStyle(
        color: appTheme == AppTheme.dark
          ? CoresTheme.textoTemaEscuro
          : CoresTheme.textoSecundarioClaro,
        fontWeight: FontWeight.w500,
      ),
      prefixIconColor: appTheme == AppTheme.dark
        ? CoresTheme.lilasPrimarioEscuro
        : CoresTheme.azulPrimarioClaro, 
      suffixIconColor: appTheme == AppTheme.dark
        ? CoresTheme.lilasPrimarioEscuro
        : CoresTheme.azulPrimarioClaro,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme == AppTheme.dark
            ? CoresTheme.bordasTemaEscuro
            : CoresTheme.bordasTemaClaro,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme == AppTheme.dark
            ? CoresTheme.bordasTemaEscuro
            : CoresTheme.bordasTemaClaro,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme == AppTheme.dark
            ? CoresTheme.textoTemaEscuro.withOpacity(0.6)
            : CoresTheme.textoPrimarioClaro.withOpacity(0.6),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 16.0,
      ),
      fillColor: appTheme == AppTheme.dark
        ? CoresTheme.surfaceTemaEscuro
        : CoresTheme.surfaceTemaClaro,
      filled: true,
    );
  }
}