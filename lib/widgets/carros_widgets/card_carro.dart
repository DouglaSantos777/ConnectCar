import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:flutter/material.dart';

class CardCarro extends StatelessWidget {
  const CardCarro({super.key});

  @override
  Widget build(BuildContext context) {
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.green.shade400, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '{categoria}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '{marca}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 6),
            Text(
              '{modelo} - {ano}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 6),
            Text(
              '{placa}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black45,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
