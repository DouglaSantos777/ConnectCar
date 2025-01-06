import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GraficoAlugueis extends ConsumerWidget {
  const GraficoAlugueis({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rents = ref.watch(rentsProvider);

    if (rents.isEmpty) {
      return const Center(child: Text("Nenhuma renda encontrada."));
    }

    final totalRents = rents.length;
    final rentCountsByMonth = <int, int>{};

    for (var rent in rents) {
      final rentMonth = rent.rentDate.month; 
      rentCountsByMonth[rentMonth] = (rentCountsByMonth[rentMonth] ?? 0) + 1;
    }

    final sections = rentCountsByMonth.entries.map((entry) {
      final month = entry.key;
      final count = entry.value;
      final percentage = (count / totalRents) * 100;

      Color color;
      switch (month) {
        case 1:
          color = Colors.green;
          break;
        case 2:
          color = Colors.blue;
          break;
        case 3:
          color = Colors.red;
          break;
        case 4:
          color = Colors.amber;
          break;
        case 5:
          color = Colors.purple;
          break;
        case 6:
          color = Colors.teal;
          break;
        default:
          color = Colors.orange;
          break;
      }

      return PieChartSectionData(
        value: percentage,
        color: color,
        title: '${percentage.toStringAsFixed(1)}%',
        radius: 60,
      );
    }).toList();

    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: PieChart(
              PieChartData(
                sectionsSpace: 4,
                centerSpaceRadius: 40,
                sections: sections,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              runSpacing: 8,
              children: rentCountsByMonth.entries.map((entry) {
                final month = entry.key;
                final color = switch (month) {
                  1 => Colors.green,
                  2 => Colors.blue,
                  3 => Colors.red,
                  4 => Colors.amber,
                  5 => Colors.purple,
                  6 => Colors.teal,
                  _ => Colors.orange,
                };

                final monthName = switch (month) {
                  1 => 'Janeiro',
                  2 => 'Fevereiro',
                  3 => 'Março',
                  4 => 'Abril',
                  5 => 'Maio',
                  6 => 'Junho',
                  _ => 'Outro',
                };

                return Row(
                  children: [
                    Icon(Icons.circle, color: color, size: 16),
                    const SizedBox(width: 5),
                    Text(monthName),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
