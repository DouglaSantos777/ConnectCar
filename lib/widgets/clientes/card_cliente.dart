import 'package:flutter/material.dart';

class CardCliente extends StatelessWidget {
  const CardCliente({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isDarkMode ? Colors.grey[850] : Colors.white70, 
        boxShadow: [
          BoxShadow(
            color: isDarkMode ? Colors.black.withOpacity(0.4) : Colors.black.withOpacity(0.15), 
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informações do Cliente:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text('Nome {cliente}', style: TextStyle(fontSize: 18)),
          Text('CPF {cliente} - CNH {cliente}', style: TextStyle(fontSize: 18)),
          Text('Endereço {cliente}', style: TextStyle(fontSize: 18)),
          Text('Telefone {cliente} - Email {cliente}', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
