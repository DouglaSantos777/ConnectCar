import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:flutter/material.dart';

class CardCarroDetalhes extends StatelessWidget {
  final int carId;
  const CardCarroDetalhes({super.key, required this.carId});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return FutureBuilder<Car?>(
      future: Database.open().then((db) => db.getCarById(carId)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); 
        }

        if (snapshot.hasError) {
          return const Text('Erro ao carregar os dados do carro');
        }

        final car = snapshot.data;

        if (car == null) {
          return const Text('Carro não encontrado');
        }

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
                      'Marca: ${car.brand}', 
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? CoresTheme.textoTemaEscuro : CoresTheme.textoAzulTemaClaro, 
                      ),
                    ),
                    Text(
                      'Modelo: ${car.model}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? CoresTheme.textoTemaEscuro : CoresTheme.textoAzulTemaClaro, 
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ano: ${car.year}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Placa: ${car.plate}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Renavam: ${car.renavam}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Categoria: ${car.category}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status: ${car.status}', 
                      style: TextStyle(
                        fontSize: 16,
                        color: car.status == 'Disponível' ? CoresTheme.corVerde : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${car.priceByDay}/dia', 
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Descrição: ${car.description}', 
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 16),
                const Orcamento(), 
              ],
            ),
          ),
        );
      },
    );
  }
}
