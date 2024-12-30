import 'package:flutter/material.dart';

class CardAluguel extends StatelessWidget {
  final VoidCallback onPressed;
  const CardAluguel({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,  
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 4, 86, 153),
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Aluguel de {categoria carro}', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text('Cliente {nome do cliente}', style: TextStyle(color: Colors.white70, fontSize: 16),),
              Text('Data de retirada - Data de devolução', style: TextStyle(color: Colors.white70, fontSize: 16),),
            ],
          ),
        )
      ),
    );
  }
}