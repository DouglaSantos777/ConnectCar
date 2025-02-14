﻿import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';

class BotaoCadastro extends StatelessWidget {
  final String label;
  final Function onPressed;
  const BotaoCadastro({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: CoresTheme.corVerde,
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 24.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: CoresTheme.textoTemaEscuro,
        ),
      ),
    );
  }
}