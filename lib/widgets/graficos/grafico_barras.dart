import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/riverpod/rents_notifier.dart';

class GraficoBarras extends ConsumerWidget {
  const GraficoBarras({super.key});

 @override
Widget build(BuildContext context, WidgetRef ref) {
  final carrosMaisAlugados = ref.watch(carrosMaisAlugadosProvider);

  return carrosMaisAlugados.when(
    data: (dados) {
      if (dados.isEmpty) {
        return const Center(child: Text('Nenhum carro alugado ainda.'));
      }

      // Gerando os grupos de barras e os rótulos dinâmicos
      List<BarChartGroupData> barGroups = [];
      List<String> carNames = [];

      for (var i = 0; i < dados.length; i++) {
        final carId = dados[i]['carId'] as int;
        final totalAlugado = dados[i]['totalAlugado'] as int;

        // Buscando o nome do carro baseado no carId
        ref.read(carroModeloProvider(carId)).when(
          data: (carModelo) {
            // Adicionando o nome do carro à lista
            carNames.add(carModelo ?? 'Carro desconhecido');
          },
          loading: () => carNames.add('Carregando...'),
          error: (error, stackTrace) => carNames.add('Erro ao carregar modelo'),
        );

        barGroups.add(BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: totalAlugado.toDouble(),
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              width: 30,
              borderRadius: BorderRadius.zero,
            ),
          ],
        ));
      }

      return SizedBox(
        height: 300,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: dados.isNotEmpty ? dados.map((e) => e['totalAlugado'] as int).reduce((a, b) => a > b ? a : b).toDouble() + 10 : 50,
            titlesData: FlTitlesData(
              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  getTitlesWidget: (value, meta) {
                    // Pega o nome do carro para cada barra
                    return Text(carNames[value.toInt()]);
                  },
                ),
              ),
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 24,
                ),
              ),
            ),
            barGroups: barGroups,
          ),
        ),
      );
    },
    loading: () => const Center(child: CircularProgressIndicator()),
    error: (error, stackTrace) => Center(child: Text('Erro ao carregar os dados: $error')),
  );
}
}