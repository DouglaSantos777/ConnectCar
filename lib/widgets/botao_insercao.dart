import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';

class BotaoInsercao extends StatelessWidget {
  final String label;
  final Function onPressed;
  const BotaoInsercao({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: CoresTheme.backgroundBotao, 
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), 
        ),
        elevation: 5, 
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.bold,
          color: CoresTheme.textoTemaEscuro 
        ),
      ),
    );
  }
}