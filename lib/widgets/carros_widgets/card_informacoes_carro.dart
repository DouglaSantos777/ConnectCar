import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:flutter/material.dart';

class CardCarroDetalhes extends StatelessWidget {
  const CardCarroDetalhes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: isDarkMode ? Colors.grey[850] : Colors.white70, 
      shadowColor: isDarkMode ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.1), 
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Marca: Fiat',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? CoresTheme.textoTemaEscuro : CoresTheme.textoAzulTemaClaro, 
                  ),
                ),
                Text(
                  'Modelo: Uno',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? CoresTheme.textoTemaEscuro : CoresTheme.textoAzulTemaClaro, 
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ano: 2020',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Placa: ABC1234',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Renavam: 1234567890',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Categoria: SUV',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Status: Disponível',
                  style: TextStyle(
                    fontSize: 16,
                    color: CoresTheme.corVerde,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'R\$ 150/dia',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Descrição: Carro em excelente estado, ideal para viagens longas e passeios. Confortável e econômico, com todos os recursos de segurança necessários.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            const Orcamento(),
          ],
        ),
      ),
    );
  }
}
