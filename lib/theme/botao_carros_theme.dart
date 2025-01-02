import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';

class BotaoCarrosTheme {
  static Color obterCorDeFundo(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return isDarkMode
        ? const Color.fromARGB(255, 5, 15, 61)
        : const Color.fromARGB(227, 224, 235, 247); 
  }

  static Color obterCorDoTexto(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return isDarkMode
        ? CoresTheme.textoTemaEscuro 
        : CoresTheme.textoSecundarioClaro ; 
  }
}
