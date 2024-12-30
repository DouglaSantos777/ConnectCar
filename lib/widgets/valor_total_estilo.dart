import 'package:flutter/material.dart';

class ValorTotalEstilo extends StatelessWidget {
  final String valorTotal;
  const ValorTotalEstilo({super.key, required this.valorTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text('Valor Total: R\$ $valorTotal', 
            style: const TextStyle(
              color: Colors.white, 
              fontSize: 20,
            ),
          ),
        ],
      )
    );
  }
}