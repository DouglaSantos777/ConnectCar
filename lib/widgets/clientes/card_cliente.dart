import 'package:flutter/material.dart';

class CardCliente extends StatelessWidget {

  const CardCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
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
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 12),
          Text('Nome {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          Text('CPF {cliente} - CNH {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          Text('Endereço {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          Text('Telefone {cliente} - Email {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
        ],
      ),
    );
  }
}