import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardCarro extends ConsumerWidget {
  final int carId;
  const CardCarro({super.key, required this.carId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final carroCategoria = ref.watch(carroCategoriaProvider(carId));
    final carroModelo = ref.watch(carroModeloProvider(carId));
    final carroPlaca = ref.watch(carroPlacaProvider(carId));

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetalhesCarroScreen(carId: carId), 
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.only(bottom: 12),
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
            carroModelo.when(
              data: (modelo) {
                return Text(
                  modelo ?? 'Modelo Indisponível',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? CoresTheme.bordasTemaEscuro : CoresTheme.corVerde,
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Erro: $error'),
            ),
            carroCategoria.when(
              data: (categoria) {
                return Text(
                  categoria ?? 'Categoria Indisponível',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? CoresTheme.textoTemaEscuro : Colors.black, 
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Erro: $error'),
            ),
            const SizedBox(height: 6),
            carroPlaca.when(
              data: (placa) {
                return Text(
                  placa ?? 'Placa Indisponível',
                  style: TextStyle(
                    fontSize: 14,
                    color: isDarkMode ? Colors.white54 : Colors.black45, 
                    fontStyle: FontStyle.italic,
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Erro: $error'),
            ),
          ],
        ),
      ),
    );
  }
}
