import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';

class CardCarro extends StatelessWidget {
  const CardCarro({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const DetalhesCarroScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[850] : CoresTheme.textoTemaEscuro, 
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isDarkMode ? CoresTheme.bordasTemaEscuro : Colors.green.shade400, 
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: isDarkMode ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.1), 
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '{categoria}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? CoresTheme.bordasTemaEscuro : CoresTheme.corVerde, 
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '{marca}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDarkMode ? CoresTheme.textoTemaEscuro : Colors.black, 
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '{modelo} - {ano}',
              style: TextStyle(
                fontSize: 14,
                color: isDarkMode ? CoresTheme.textoTemaEscuro : Colors.black54, 
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '{placa}',
              style: TextStyle(
                fontSize: 14,
                color: isDarkMode ? Colors.white54 : Colors.black45, 
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
