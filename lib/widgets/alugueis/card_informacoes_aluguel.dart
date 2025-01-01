import 'package:flutter/material.dart';

class CardInformacoesAluguel extends StatelessWidget {
  const CardInformacoesAluguel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Informações do Aluguel:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text('Data de Retirada {aluguel}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          const Text('Data de Devolução {aluguel}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          const Text('Valor Total {aluguel}', style: TextStyle(fontSize: 18, color: Colors.black54)),
          const SizedBox(height: 16),
    
          // se o cliente já pagou:
          const Text('Data do Pagamento {cliente}', style: TextStyle(fontSize: 18, color: Colors.red)),
          const SizedBox(height: 16),
    
          // se o cliente não pagou
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('Registrar Pagamento'),
          ),
          const SizedBox(height: 12),
    
          // quando clicar as informações vão para o histórico
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('Registrar Devolução'),
          ),
        ],
      ),
    );
  }
}