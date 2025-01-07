import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:io';

final carDetailsProvider = FutureProvider.family<Car?, int>((ref, carId) async {
  final db = await Database.open();
  return db.getCarById(carId);
});

class CardCarroDetalhes extends ConsumerWidget {
  final int carId;
  CardCarroDetalhes({super.key, required this.carId});

  final _dataRetiradaController = TextEditingController();
  final _dataDevolucaoController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carAsync = ref.watch(carDetailsProvider(carId));
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return carAsync.when(
      data: (car) {
        if (car == null) {
          return const Center(child: Text('Carro não encontrado'));
        }

        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: isDarkMode ? Colors.grey[850] : Colors.white70,
          shadowColor:
              isDarkMode ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: _carregarImagem(car.photo), 
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Marca: ${car.brand}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode
                            ? CoresTheme.textoTemaEscuro
                            : CoresTheme.textoAzulTemaClaro,
                      ),
                    ),
                    Text(
                      'Modelo: ${car.model}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode
                            ? CoresTheme.textoTemaEscuro
                            : CoresTheme.textoAzulTemaClaro,
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
                        color: car.status == 'Disponível'
                            ? CoresTheme.corVerde
                            : Colors.red,
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
                Orcamento(
                  dataRetiradaController: _dataRetiradaController, 
                  dataDevolucaoController: _dataDevolucaoController,
                  valueCar: car.priceByDay,
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => const Center(child: Text('Erro ao carregar dados do carro')),
    );
  }

  Widget _carregarImagem(String url) {
    if (url.startsWith('/data/')) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          File(url),
          height: 200, 
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Icon(
            Icons.directions_car, 
            size: 80,
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
